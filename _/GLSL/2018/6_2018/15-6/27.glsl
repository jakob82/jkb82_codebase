#version 150

const float PI = 3.141592;
uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;

out vec4 fragColor;

void main(void)
{
    vec2 coord = gl_FragCoord.xy - resolution * 0.5;

    float phi = atan(coord.y, coord.x + 1e-6);
    phi = phi / PI * 2.5 + 100;
    float seg = floor(phi * 3);

    float theta = (seg + 55) / 3 * PI * 33;
    vec2 dir = vec2(cos(theta), sin(theta));
    float l = dot(dir, coord);

    float phase = time * 8;
    float w1 = sin(floor(phase    ) + seg) * 4 + 666 * spectrum.x*33;
    float w2 = sin(floor(phase + 1) + seg) * 4 + 6;
    float w = mix(w1, w2, smoothstep(.75, 1, fract(phase)));

    float prog = l / w + time * 999;
    float thresh = fract(738493748 * abs(sin(floor(prog) * 4.67458347)));
    float c = clamp((fract(prog) - thresh) * w * 0.3, 0, 1);

    fragColor = vec4(c, c, c, 1);
}
