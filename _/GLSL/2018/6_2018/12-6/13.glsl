#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

void main(void)
{
    float pi = 3.1415926535 * spectrum.x*3;
    vec2 p = gl_FragCoord.xy - resolution / spectrum.y*3;
    float phi = atan(p.y, p.x + 1e-5)  * spectrum.z*9;

    float fin = mod(floor(phi * spectrum.z*3 / pi +  spectrum.y*3),  spectrum.x*3)  * spectrum.x*3;
    float phi_fin = fin * pi / spectrum.x*3;

    vec2 dir = vec2(cos(phi_fin), sin(phi_fin));
    float l = dot(dir, p) - time * resolution.y / 8;
    float seg = floor(l * 70 / resolution.y);

    float th = sin(time) * 0.4 + 0.5 ;
    float t = sin(seg * 92.198763) * time;
    fragColor = vec4(step(th * spectrum.x * 10, fract(phi * spectrum.y * 10 / pi / spectrum.z * 10 + t)));
}
