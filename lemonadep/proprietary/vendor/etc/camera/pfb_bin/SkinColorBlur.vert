#version 320 es
layout(location = 0) in vec2 a_position;
layout(location = 1) in vec2 a_texcoord;
precision highp float;

out vec2 v_texCoord;
out lowp float x_coor[12];
out lowp float y_coor[12];
uniform lowp float ratio;
uniform float ppi_w;
uniform float ppi_h;

void main()
{
    gl_Position = vec4(a_position, 0.0, 1.0);
    v_texCoord = a_texcoord;
    if (ratio != 0.0) {
        vec2 unit_uv = vec2(1./ 720., 1./ 720. / 16. * 9.);//vec2(ppi_w, ppi_h);//
        int i = 0;
        int j = 0;
        float nums[2];
        lowp float tmp_ = 0.6; // 0.6
        nums[0] = 1.0 * tmp_;
        nums[1] = 2.0 * tmp_;
        // nums[2] = 4.;
        float num;
        // 3 4 5 6 8 10 12 16 20
        // 0 2 4 6 8 10 12 14 16 
        for(j = 0; j < 2; j++)
        {
            num = 3. * nums[j];
            x_coor[i] = v_texCoord.x + unit_uv.x * ( num);
            y_coor[i] = v_texCoord.y + unit_uv.y * ( num);
            i++;

            x_coor[i] = v_texCoord.x + unit_uv.x * (-num);
            y_coor[i] = v_texCoord.y + unit_uv.y * (-num);
            i++;

            num = 4. * nums[j];
            x_coor[i] = v_texCoord.x + unit_uv.x * ( num);
            y_coor[i] = v_texCoord.y + unit_uv.y * ( num);
            i++;

            x_coor[i] = v_texCoord.x + unit_uv.x * (-num);
            y_coor[i] = v_texCoord.y + unit_uv.y * (-num);
            i++;

            num = 5. * nums[j];
            x_coor[i] = v_texCoord.x + unit_uv.x * ( num);
            y_coor[i] = v_texCoord.y + unit_uv.y * ( num);
            i++;

            x_coor[i] = v_texCoord.x + unit_uv.x * (-num);
            y_coor[i] = v_texCoord.y + unit_uv.y * (-num);
            i++;
        }
    }
}
