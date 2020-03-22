#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

void main(void)
{
    float pi = 3.1415926535 * spectrum.x*8 * spectrum.x*8 * spectrum.x*8 * spectrum.x*8;
    vec2 p = gl_FragCoord.xy - resolution / 2 * (spectrum.x  * spectrum.x*8 * spectrum.x*8 * spectrum.x*8);
    float phi = atan(p.y, p.x + 1e-6);

    float fin = mod(floor(phi * 3 / pi + 0.5), 6);
    float phi_fin = fin * pi / 3;

    vec2 dir = vec2(cos(phi_fin), sin(phi_fin)) * spectrum.y*8 * spectrum.x*8 * spectrum.x*8 * spectrum.x*8;
    float l = dot(dir, p) - time * resolution.y / 5 * spectrum.x*8 * spectrum.x*8 * spectrum.x*8;

    float ivr = 20 * spectrum.x*8* spectrum.x*8;
    float seg = l / ivr  * spectrum.x*8;

    float w = sin(floor(seg) * 0.2 - time * spectrum.x*8) * 0.4 + 0.5 * spectrum.x*8;
    float c = (w / 2 - abs(fract(seg) - 0.5)) * ivr * spectrum.x*8* spectrum.x*8* spectrum.x*8;

    fragColor = vec4(c, c, -c, 1);
}
