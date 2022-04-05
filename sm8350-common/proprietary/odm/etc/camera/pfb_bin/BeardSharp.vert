#version 320 es
layout(location = 0) in vec2 a_position;
layout(location = 1) in vec2 a_texcoord;
precision highp float;
out vec2 v_texCoord;

void main()
{
    gl_Position = vec4(a_position, 0.0, 1.0);
    v_texCoord = a_texcoord;
}