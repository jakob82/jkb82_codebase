#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

void main(void)
{
    float pi = (31.415926535 + (time*time*10)) + ((1 * spectrum.y)*time*10);
    vec2 p = gl_FragCoord.xy - resolution / spectrum.x;
    float phi = atan(p.y, p.x + 1e-6);

    float fin = mod(floor(phi * 30 / pi + 0.5), 60);
    float phi_fin = fin * pi / 666;

    vec2 dir = vec2(cos(phi_fin), sin(phi_fin));
    float l = dot(dir, p) - sin(time) * sin(resolution.y) / 50;

    float ivr = 20 * (spectrum.z * 10 * (time/5)) * (spectrum.x  * (time/5)) * (spectrum.y *  (time/500));
    float seg = l / ivr;

    float w = sin(floor(seg) * 0.2 - time) * 0.4 + 0.5;
    float c = (w / 2 - abs(fract(seg) - 0.5)) * ivr;

    fragColor = vec4(c*spectrum.x, c*spectrum.y, c*spectrum.z * 10, 10*(spectrum.x*10));
}
