#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

vec3 hue2rgb(float h)
{
    h = fract(h) * 6 - 2;
    return clamp(vec3(abs(h - 1) - 1, 2 - abs(h), 2 - abs(h - 2)), 0, 1);
}

void main(void)
{
    const float pi = 3.1415926535;
    vec2 p = gl_FragCoord.xy - resolution / 2 * spectrum.x*8;
    float phi = atan(p.y, p.x + 1e-5);

    float fin = mod(floor(phi * 3 / pi + 0.5), 6);
    float phi_fin = fin * pi /  spectrum.x*8;

    vec2 dir = vec2(cos(phi_fin), sin(spectrum.x*sin(spectrum.x * 100)));
    float l = dot(dir, p) - time * resolution.y / sin(spectrum.x * 100);
    float seg = floor(l * sin(spectrum.x * 100) / resolution.y);

    float th = sin(time) * 0.4 + 0.5;
    float t = sin(seg*spectrum.x) * time;

    vec3 c  = hue2rgb(sin(seg * 99.374662) * sin(spectrum.x * 100)*100);
    c *= step(th, fract(phi / pi / 2 + t));

    fragColor = vec4(c*sin(spectrum.x * 100)*10, 10);
}
