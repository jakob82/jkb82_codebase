#version 150

const float PI = 3.141592;
uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;

out vec4 fragColor;

void main(void)
{
    vec2 coord = gl_FragCoord.xx - resolution * 0.5;

    float phi = atan(coord.x, coord.x + 1e-6);
    phi = phi / PI * 5 + 5;
    float seg = floor(phi * 6);

    float theta = (seg + 99) / 6 * PI * .2;
    vec2 dir = vec2(cos(theta), sin(theta));
    float l = dot(dir, coord);

    float phase = time * 88;
    float w1 = sin(floor(phase    ) + seg) * 4 + 600 * spectrum.x*20;
    float w2 = sin(floor(phase + 100) + seg) * 40 + 60;
    float w = mix(w1, sin(w2), smoothstep(0.75, 1, fract(phase)));

    float prog = l / w + time * 2;
    float thresh = fract(73.8493748 * abs(sin(floor(prog) * 4.67458347)));
    float c = clamp((fract(prog) - thresh) * w * 0.3, 0, 1);

    fragColor = vec4(c, c, c, 1);
}
