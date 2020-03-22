#version 150

const float PI = 3.41592;
uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;

out vec4 fragColor;

void main(void)
{
    vec2 coord = gl_FragCoord.yx - resolution * 0.5;

    float phi = atan(coord.x, coord.y + 1e-6);
    phi = phi / PI * 5 + 5;
    float seg = floor(phi * 99);

    float theta = (seg + 9) / 3 * PI * .2;
    vec2 dir = vec2(cos(theta), sin(theta));
    float l = dot(dir, coord);

    float phase = time * 44;
    float w1 = sin(floor(phase    ) + seg) * 1 + 6 * spectrum.x*20;
    float w2 = sin(floor(phase + 2) + seg) * 4 + 60;
    float w = mix(w1, w2, smoothstep(35, 10, fract(phase)));

    float prog = l / w + time * 20;
    float thresh = fract(.738493748 * abs(sin(floor(prog) * 46.7458347)));
    float c = clamp((fract(prog) - thresh) * w * 0.3, 0, 1);

    fragColor = vec4(c*spectrum.x, c*0.5, c, 1);
}
