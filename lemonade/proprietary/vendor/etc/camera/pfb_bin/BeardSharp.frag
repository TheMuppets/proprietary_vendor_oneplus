#version 320 es

precision mediump float;
uniform sampler2D texImage;
uniform sampler2D texMask;
uniform float ppi_w;
uniform float ppi_h;
uniform float sharpLevel;
uniform float sharpRadius;

#define sharp_channel  r
in vec2 v_texCoord;
out vec4 FragColor;

highp vec3 YUV2RGB(vec3 yuv)                                           
{                                                                      
    highp vec3 rgb;                                                      
    rgb.r = yuv.r + 1.370705 * (yuv.b - 0.5);                            
    rgb.g = yuv.r - 0.698001*(yuv.b - 0.5) - 0.337633*(yuv.g - 0.5);     
    rgb.b = yuv.r + 1.732446*(yuv.g - 0.5);                              
    return rgb;                                                          
}                                                                      

highp vec3 RGB2YUV(vec3 rgb)                                           
{                                                                      
    highp vec3 yuv;                                                      
    yuv.r = 0.298822*rgb.r + 0.586815*rgb.g + 0.114363*rgb.b;            
    yuv.b = 0.511545*rgb.r - 0.428112*rgb.g - 0.083434*rgb.b + 0.5;      
    yuv.g = -0.172486*rgb.r - 0.338720*rgb.g + 0.511206*rgb.b + 0.5;     
    return yuv;
}

// vec3 Sharpen(vec2 textureCoordinate, vec3 iColor, vec3 blurColor, float radius, float sharpen)
// {  
//     float mul_x = ppi_w * radius;
//     float mul_y = ppi_h * radius;

//     vec2 blurCoordinates0 = textureCoordinate +  vec2(-1.0 * mul_x,  0.0 * mul_y);
//     vec2 blurCoordinates1 = textureCoordinate +  vec2(1.0 * mul_x,  0.0 * mul_y);
//     vec2 blurCoordinates2 = textureCoordinate +  vec2(0.0 * mul_x,  -1.0 * mul_y);
//     vec2 blurCoordinates3 = textureCoordinate +  vec2( 0.0 * mul_x, 1.0 * mul_y);
//     vec2 blurCoordinates4 = textureCoordinate +  vec2( -1.0 * mul_x,  1.0 * mul_y);
//     vec2 blurCoordinates5 = textureCoordinate +  vec2( -1.0 * mul_x, -1.0 * mul_y);
//     vec2 blurCoordinates6 = textureCoordinate +  vec2( 1.0 * mul_x,  -1.0 * mul_y);
//     vec2 blurCoordinates7 = textureCoordinate +  vec2( 1.0 * mul_x,  1.0 * mul_y);

//     highp float sum = 0.25 * iColor.sharp_channel;

//     sum += 0.125 * texture(texImage, blurCoordinates0).sharp_channel;
//     sum += 0.125 * texture(texImage, blurCoordinates1).sharp_channel;
//     sum += 0.125 * texture(texImage, blurCoordinates2).sharp_channel;
//     sum += 0.125 * texture(texImage, blurCoordinates3).sharp_channel;
//     sum += 0.0625 * texture(texImage, blurCoordinates4).sharp_channel;
//     sum += 0.0625 * texture(texImage, blurCoordinates5).sharp_channel;
//     sum += 0.0625 * texture(texImage, blurCoordinates6).sharp_channel;
//     sum += 0.0625 * texture(texImage, blurCoordinates7).sharp_channel;

//     float hPass = iColor.sharp_channel - sum + 0.5;
//     highp vec3 sharpColor = clamp((2.0 * hPass + blurColor.rgb - 1.0), 0.0, 1.0);
//     highp vec3 color = mix(blurColor.rgb, sharpColor.rgb, sharpen);

//     return color;
// }

float SharpenSingle(vec2 textureCoordinate, float iColor,  float blurColor, float radius, float sharpen) {
    float mul_x = ppi_w * radius;
    float mul_y = ppi_h * radius;
    vec2 blurCoordinates0 = textureCoordinate +  vec2(-1.0 * mul_x,  0.0 * mul_y);
    vec2 blurCoordinates1 = textureCoordinate +  vec2(1.0 * mul_x,  0.0 * mul_y);
    vec2 blurCoordinates2 = textureCoordinate +  vec2(0.0 * mul_x,  -1.0 * mul_y);
    vec2 blurCoordinates3 = textureCoordinate +  vec2( 0.0 * mul_x, 1.0 * mul_y);
    vec2 blurCoordinates4 = textureCoordinate +  vec2( -1.0 * mul_x,  1.0 * mul_y);
    vec2 blurCoordinates5 = textureCoordinate +  vec2( -1.0 * mul_x, -1.0 * mul_y);
    vec2 blurCoordinates6 = textureCoordinate +  vec2( 1.0 * mul_x,  -1.0 * mul_y);
    vec2 blurCoordinates7 = textureCoordinate +  vec2( 1.0 * mul_x,  1.0 * mul_y);
    highp float sum = 0.25 * iColor;
    sum += 0.125 * texture(texImage, blurCoordinates0).sharp_channel;
    sum += 0.125 * texture(texImage, blurCoordinates1).sharp_channel;
    sum += 0.125 * texture(texImage, blurCoordinates2).sharp_channel;
    sum += 0.125 * texture(texImage, blurCoordinates3).sharp_channel;
    sum += 0.0625 * texture(texImage, blurCoordinates4).sharp_channel;
    sum += 0.0625 * texture(texImage, blurCoordinates5).sharp_channel;
    sum += 0.0625 * texture(texImage, blurCoordinates6).sharp_channel;
    sum += 0.0625 * texture(texImage, blurCoordinates7).sharp_channel;
    float hPass = iColor - sum + 0.5;
    float sharpColor = clamp((2.0 * hPass + blurColor - 1.0), 0.0, 1.0);
    float color = mix(blurColor, sharpColor, sharpen);
    return color;
}

void main()
{
    highp vec4 baseColor = texture(texImage, v_texCoord);
    // baseColor.rgb = YUV2RGB(baseColor.rgb);
    highp float maskColor = texture(texMask, v_texCoord).r;
    if ((maskColor >= 3.0/255.0 && maskColor <= 3.0/255.0)) {
        baseColor.r = SharpenSingle(v_texCoord, baseColor.r, baseColor.r, sharpRadius, sharpLevel);
    }
    // FragColor.rgb = RGB2YUV(baseColor.rgb);
    FragColor.rgb = baseColor.rgb;
    FragColor.a = 1.0;
}
