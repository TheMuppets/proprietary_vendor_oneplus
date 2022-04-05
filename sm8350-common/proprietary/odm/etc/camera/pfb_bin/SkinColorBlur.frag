#version 320 es
precision highp float;
uniform sampler2D ori_img;
uniform sampler2D face_mask;
uniform float value_factor;
uniform lowp float ratio;
uniform float ppi_w;
uniform float ppi_h;

in vec2 v_texCoord;
in lowp float x_coor[12];
in lowp float y_coor[12];
out vec4 FragColor;
#define S1 ori_img //  blur_img
#define blur_channel r
#define weight_channel r

vec4 processingRGB(vec4 sum_value, float center_gray, vec2 coor) {
    lowp vec3 tmp_color = texture(S1, coor).rgb;
    lowp float tmp_value_dis = tmp_color.g - center_gray;
    tmp_value_dis = 1. - min(tmp_value_dis * tmp_value_dis * value_factor, 1.);
    sum_value.xyz += tmp_color * tmp_value_dis;
    sum_value.w += tmp_value_dis;
    return sum_value;
}

vec4 processingPixel(vec4 sum_value, float center_gray, vec2 coor) {
    lowp vec3 tmp_color = texture(S1, coor).rgb;
    lowp float tmp_value_dis = tmp_color.weight_channel - center_gray;
    tmp_value_dis = 1. - min(tmp_value_dis * tmp_value_dis * value_factor, 1.);
    sum_value.blur_channel += tmp_color.blur_channel * tmp_value_dis;
    sum_value.w += tmp_value_dis;
    return sum_value;
}

void main(void)
{
    lowp vec3 center_color = texture(S1, v_texCoord).rgb;
    lowp float mask_value = texture(face_mask, v_texCoord).r;
    if (ratio != 0.0 && mask_value >= 2.0/255.0 && mask_value <= 4.0/255.0) {
        lowp vec2 unit_uv = vec2(1./ 720., 1./ 720. / 16. * 9.);//vec2(ppi_w, ppi_h);//

        lowp float center_gray = center_color.weight_channel;
        lowp vec3 res_color = center_color;
        lowp vec2 tmp_uv;
        lowp float num1;
        lowp float num2;
        lowp vec4 sum_value = vec4(0., 0., 0., 0.);

        // outer
        // 3 4 5 6 8 10 12 16 20
        // 0 2 4 6 8 10 12 14 16

        // [5,0] [-5,0] [0,5] [0,-5]
        tmp_uv = vec2(x_coor[4], v_texCoord.y);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[5], v_texCoord.y);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x, y_coor[4]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x, y_coor[5]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);

        // [10,0] [-10,0] [0,10] [0,-10]
        tmp_uv = vec2(x_coor[10], v_texCoord.y);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[11], v_texCoord.y);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x, y_coor[10]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x, y_coor[11]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);

        // [4,3] [4,-3] [-4,3] [-4, -3]
        tmp_uv = vec2(x_coor[2], y_coor[0]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[2], y_coor[1]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[3], y_coor[0]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[3], y_coor[1]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);

        // [3,4] [3,-4] [-3,4] [-3, -4]
        tmp_uv = vec2(x_coor[0], y_coor[2]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[0], y_coor[3]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[1], y_coor[2]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[1], y_coor[3]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);

        // [6,8] [6,-8] [-6,8] [-6, -8]
        tmp_uv = vec2(x_coor[6], y_coor[8]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[6], y_coor[9]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[7], y_coor[8]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[7], y_coor[9]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);

        // [8,6] [8,-6] [-8,6] [-8, -6]
        tmp_uv = vec2(x_coor[8], y_coor[6]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[8], y_coor[7]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[9], y_coor[6]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(x_coor[9], y_coor[7]);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);

        num1 = 12.;
        num2 = 16.;
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * ( num1), v_texCoord.y + unit_uv.y * ( num2));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * ( num1), v_texCoord.y + unit_uv.y * (-num2));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * (-num1), v_texCoord.y + unit_uv.y * ( num2));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * (-num1), v_texCoord.y + unit_uv.y * (-num2));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        
        num1 = 16.;
        num2 = 12.;
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * ( num1), v_texCoord.y + unit_uv.y * ( num2));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * ( num1), v_texCoord.y + unit_uv.y * (-num2));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * (-num1), v_texCoord.y + unit_uv.y * ( num2));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * (-num1), v_texCoord.y + unit_uv.y * (-num2));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);

        // [20,0] [-20,0] [0,20] [0,-20]
        num1 = 20.;
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * ( num1), v_texCoord.y);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x + unit_uv.x * (-num1), v_texCoord.y);
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x, v_texCoord.y + unit_uv.y * ( num1));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);
        tmp_uv = vec2(v_texCoord.x, v_texCoord.y + unit_uv.y * (-num1));
        sum_value = processingPixel(sum_value, center_gray, tmp_uv);

        sum_value.blur_channel += center_color.blur_channel;
        sum_value.w += 1.0;

        res_color.blur_channel =  sum_value.blur_channel / sum_value.w;;

        FragColor.rgb = res_color; //
    } else {
        FragColor.rgb = center_color;
    }
    FragColor.a = 1.;
}
