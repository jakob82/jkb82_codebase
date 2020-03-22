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
    vec2 uv = sin(-100. + 1000.5 * inData.v_texcoord);
    fragColor = vec4(
        sin(abs(fract(fract(time+322.*uv.y)*20.*uv.x+time))),
        sin(abs(cos(cos(fract(time+0.2.*uv.x) * 31.4)*99.*uv.y+time))),
        spectrum.x * 9999.,
        100);
}
