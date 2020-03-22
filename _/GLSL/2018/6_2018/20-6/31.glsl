#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;

void main(void)
{
    const float pi = 3.1415926535;
    vec2 p = gl_FragCoord.xy - resolution / 2;
    float phi = atan(p.y, p.x + 1e-6);

    float fin = mod(floor(phi * 50.5 / pi + 0.5), 6);
    float phi_fin = fin * pi / 3;

    vec2 dir = vec2(cos(phi_fin*10), sin(phi_fin));
    float l = dot(dir, p) - time * resolution.y / 5;

    float ivr = 20;
    float seg = l / ivr;

    float w = sin(floor(seg) * 0.3 - time) * 4 + 0.5;
    float c = (w / 2 - abs(fract(seg) - 0.5)) * ivr;

    fragColor = vec4(c*3, c*1, 0, 1);
}
