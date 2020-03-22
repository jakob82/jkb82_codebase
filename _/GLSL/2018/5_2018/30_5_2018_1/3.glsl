#version 150

uniform float time;
uniform vec2 resolution;
uniform vec2 mouse;
uniform vec3 spectrum;

uniform sampler2D texture0;
uniform sampler2D texture1;
uniform sampler2D texture2;
uniform sampler2D texture3;
uniform sampler2D prevFrame;
uniform sampler2D prevPass;

in VertexData
{
    vec4 v_position;
    vec3 v_normal;
    vec2 v_texcoord;
} inData;

out vec4 fragColor;

void main(void)
{
    vec2 uv = -1. + 2. * inData.v_texcoord;
    fragColor = vec4(
        abs(sin(cos(time+3.*uv.y)*2.*uv.x+time * spectrum.y)),
        abs(cos(sin(time* spectrum.x+2.*uv.x)*3.*uv.y+time* spectrum.z)),
        spectrum.x * 150.,
        1.0);
}
