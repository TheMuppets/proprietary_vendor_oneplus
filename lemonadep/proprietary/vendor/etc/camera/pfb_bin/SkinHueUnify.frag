#version 320 es

precision highp float;
uniform sampler2D ori_img;
uniform sampler2D AI_mask;
uniform sampler2D face_mask;
uniform vec3 thd_hue;

in vec2 v_texCoord;
out vec4 FragColor;

highp vec3 YUV2RGB(vec3 yuv) {
    highp vec3 rgb;
    rgb.r = yuv.r + 1.370705 * (yuv.b - 0.5);
    rgb.g = yuv.r - 0.698001*(yuv.b - 0.5) - 0.337633*(yuv.g - 0.5);
    rgb.b = yuv.r + 1.732446*(yuv.g - 0.5);
    return rgb;
}

highp vec3 RGB2YUV(vec3 rgb) {
    highp vec3 yuv;
    yuv.r = 0.298822*rgb.r + 0.586815*rgb.g + 0.114363*rgb.b;
    yuv.b = 0.511545*rgb.r - 0.428112*rgb.g - 0.083434*rgb.b + 0.5;
    yuv.g = -0.172486*rgb.r - 0.338720*rgb.g + 0.511206*rgb.b + 0.5;
    return yuv;
}

mediump vec3 RGB2HSV(vec3 rgb) {
    highp float h = 0.0;
    highp float s = 0.0;
    highp float v = 0.0;

    float R = rgb.r;
    float G = rgb.g;
    float B = rgb.b;
    float max_color = max(R, max(G, B));
    float min_color = min(R, min(G, B));
    float range = max_color - min_color;
    v = max_color;
    if (max_color != min_color) {
        if (R >= G && R >= B) {
            h = (G - B) / range * 60.0f;
        } else if (G >= R && G >= B) {
            h = 120.0 + (B - R) / range * 60.0f;
        } else {
            h = 240.0 + (R - G) / range * 60.0f;
        }
        if (h < 0.0) {
            h = h + 360.0f;
        }
        s = range / max_color;
    }
    h = h / 360.0;

    return vec3(h, s, v);
}

highp vec3 HSV2RGB(vec3 hsv) {
    vec3 rgb = vec3(0.0);
    float h = hsv.x;
    float s = hsv.y;
    float v = hsv.z;
    float hue = 6.0 * h;
    int k = int(floor(hue));
    float f = hue - float(k);//fract(hue);
    float p = v * (1.0 - s);
    float q = v * (1.0 - f * s);
    float t = v * (1.0 - (1.0 - f) * s);
    if(0 == k) { rgb = vec3(v, t, p); }
    if(1 == k) { rgb = vec3(q, v, p); }
    if(2 == k) { rgb = vec3(p, v, t); }
    if(3 == k) { rgb = vec3(p, q, v); }
    if(4 == k) { rgb = vec3(t, p, v); }
    if(5 == k) { rgb = vec3(v, p, q); }
    return rgb;
}

void main(void)
{
    highp vec3 center_color = texture(ori_img, v_texCoord).rgb;
    float face_skin = texture(face_mask, v_texCoord).b;
    float ai_mask = texture(AI_mask, v_texCoord).r;
    bool face_skin_roi = ai_mask >= 2.0/255.0 && ai_mask <= 2.0/255.0;// && face_skin > 0.1;
    bool body_skin_roi = ai_mask >= 4.0/255.0 && ai_mask <= 4.0/255.0;
    float roi_wight = max(float(face_skin_roi) * face_skin, float(body_skin_roi));
    if (face_skin_roi || body_skin_roi) {
        vec3 rgb = YUV2RGB(center_color);
        float maxValue = step(rgb.r, rgb.g) + step(rgb.r, rgb.b);
        bool isSkin = !(bool(maxValue));
        vec3 hsv = RGB2HSV(rgb);
        float offset = 0.0;
        if (hsv.r > 0.0 && hsv.r < thd_hue.x && isSkin) {
            offset = thd_hue.x - hsv.r;
            offset = clamp(offset, 0.0, thd_hue.z) * roi_wight;
            hsv.r = hsv.r + offset;
            // hsv = vec3(0.0, 0.0, 0.0);
        } else if (hsv.r > thd_hue.y && hsv.r < 0.1667 && isSkin) {
            offset = hsv.r - thd_hue.y;
            offset = clamp(offset, 0.0, thd_hue.z) * roi_wight;
            hsv.r = hsv.r - offset;
            // hsv = vec3(0.0, 0.0, 0.0);
        }
        rgb = HSV2RGB(hsv);
        FragColor.rgb = RGB2YUV(rgb);
    } else {
        FragColor.rgb = center_color;
    }
    FragColor.a = 1.;
}
