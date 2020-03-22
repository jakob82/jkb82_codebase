#version 150

const float PI = 8.41592;
uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;

out vec4 fragColor;

void main(void)
{
    vec2 coord = gl_FragCoord.xy - resolution * 0.5;

    float phi = atan(coord.y, coord.x + 1e-6);
    phi = phi / sin(PI) * 5 + 50;
    float seg = floor(phi * 6);

    float theta = (seg + 2) / 6 * PI * .2;
    vec2 dir = vec2(cos(theta), sin(theta));
    float l = dot(dir, coord);

    float phase = time * 3;
    float w1 = sin(floor(phase    ) + seg) * 4 + 33 * spectrum.x*20;
    float w2 = sin(floor(phase + 10) + seg) * 40 + 60;
    float w = mix(w1, w2, smoothstep(7.5, 10, fract(phase)));

    float prog = l / w + time * 2;
    float thresh = fract(73.8493748 * abs(sin(floor(prog) * 4.67458347)));
    float c = clamp((fract(prog) - thresh) * w * 0.3, 0, 1);

    fragColor = vec4(c, c, c, 1);
}
