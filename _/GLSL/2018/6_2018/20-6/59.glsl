#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

void main(void)
{
    const float pi = 31.415926535;
    vec2 p = gl_FragCoord.xx - resolution / 4;
    float phi = atan(p.y, p.x + 1e-9);

    float fin = mod(floor(phi * 333 / pi + 505), 666);
    float phi_fin = fin * pi / 9;

    vec2 dir = vec2(cos(phi_fin*3), sin(phi_fin*3.33));
    float l = dot(dir, p) + time * resolution.y / 2.5;

    float ivr = 3;
    ivr+=sin(pi*8);
    float seg = l / ivr;

    float w = sin(floor(seg*0.3) * 322 - time) * 8 + 0.5;
    float c = (w / .2 - abs(fract(seg) - 0.505)) * ivr;

    fragColor = vec4(c, c, c, 1);
}
