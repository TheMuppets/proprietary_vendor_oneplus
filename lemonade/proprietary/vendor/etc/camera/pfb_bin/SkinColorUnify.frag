#version 320 es

precision highp float;
uniform sampler2D ori_img;
uniform sampler2D blur1;
uniform sampler2D blur2;
uniform sampler2D face_mask;
uniform lowp float ratio;
// uniform float target_degree;

in vec2 v_texCoord;
out vec4 FragColor;

highp vec3 YUV2RGB(vec3 yuv) {
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

void main(void)
{
    lowp vec3 center_color = texture(ori_img, v_texCoord).rgb;
    lowp vec4 mask_color = texture(face_mask, v_texCoord);
    if (ratio != 0.0 && mask_color.r >= 2.0/255.0 && mask_color.r <= 4.0/255.0) {
        lowp vec3 blur1_color = texture(blur1, v_texCoord).rgb;
        lowp vec3 blur2_color = texture(blur2, v_texCoord).rgb;

        lowp float maskValue = (mask_color.r >= 2.0/255.0 && mask_color.r <= 4.0/255.0) ? 1.0 : 0.0;

        lowp float nose_threshold = 0.02;
        lowp float noseMaskValue = 0.;
        if(mask_color.g > nose_threshold) {
            noseMaskValue = (mask_color.g - nose_threshold) * 1.02;
        }
        // noseMaskValue = 0.0;

        lowp float target_degree = 0.75;//0.75 0.58823 150. / 255.;
        lowp float thres = 1. - target_degree;
        float mask1 = max(blur1_color.r - thres, 0.) / target_degree * 3.6;  // 2.5 3.3
        float mask1_add = max(thres - blur1_color.r, 0.) / thres * 3.6;
        mask1 = max(mask1, mask1_add);
        lowp float blur1_ratio = 1. - 0.3 * noseMaskValue;

        // vec3 mask2 = (blur1_color - blur2_color) * mask1;
        lowp vec3 mask2 = (blur1_ratio * blur1_color + (1. - blur1_ratio) * center_color - blur2_color) * mask1;
        lowp vec3 res_color = clamp(center_color - mask2, 0.0, 1.0);

        lowp vec3 new_color = mix(center_color, res_color, ratio * maskValue);

        FragColor.rgb = new_color;
    } else {
        FragColor.rgb = center_color;
    }
    // if(v_texCoord.x < 0.2 && v_texCoord.y < 0.2) {
    //     FragColor.rgb = vec3(1.0, 0.0,0.0);
    // }
    FragColor.a = 1.;
}
