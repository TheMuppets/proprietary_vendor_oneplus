#version 320 es

precision mediump float;
uniform sampler2D ori_img;
uniform sampler2D AI_mask;
uniform sampler2D face_mask;

in vec2 v_texCoord;
out float FragColor;

highp vec3 YUV2RGB(vec3 yuv) {
    highp vec3 rgb;
    rgb.r = yuv.r + 1.370705 * (yuv.b - 0.5);
    rgb.g = yuv.r - 0.698001*(yuv.b - 0.5) - 0.337633*(yuv.g - 0.5);
    rgb.b = yuv.r + 1.732446*(yuv.g - 0.5);
    return rgb;
}

mediump float calcHue(vec3 rgb) {
    highp float hue = 0.0;
    float R = rgb.r;
    float G = rgb.g;
    float B = rgb.b;
    float max_color = max(R, max(G, B));
    float min_color = min(R, min(G, B));
    float range = max_color - min_color;
    if (max_color != min_color) {
        if (R >= G && R >= B) {
            hue = (G - B) / (range + 0.00001) * 60.0f;
        } else if (G >= R && G >= B) {
            hue = 120.0 + (B - R) / (range + 0.00001) * 60.0f;
        } else {
            hue = 240.0 + (R - G) / (range + 0.00001) * 60.0f;
        }
        if (hue < 0.0) {
            hue = hue + 360.0f;
        }
    }
    hue = hue / 360.0;
    return hue;
}

void main(void)
{
    vec3 center_color = texture(ori_img, v_texCoord).rgb;
    float face_skin = texture(face_mask, v_texCoord).b;
    float ai_mask = texture(AI_mask, v_texCoord).r;
    bool face_skin_roi = ai_mask >= 2.0/255.0 && ai_mask <= 2.0/255.0 && face_skin > 0.1;
    if (face_skin_roi) {
        mediump vec3 rgb = YUV2RGB(center_color);
        mediump float hue = calcHue(rgb);
        FragColor = hue;
    } else {
        FragColor = 0.0;
    }
}
