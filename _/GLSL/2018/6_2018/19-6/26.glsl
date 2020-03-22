#version 150

const float PI = .3141592;
uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;

out vec4 fragColor;

void main(void)
{
    vec2 coord = gl_FragCoord.xx - resolution * 0.5;

    float phi = atan(coord.y, coord.x + 1e-6);
    phi = phi / PI * 5 + 5;
    float seg = floor(phi * 6);

    float theta = (seg + 2.50) / 3.3 * PI * .2;
    vec2 dir = vec2(cos(theta), sin(theta));
    float l = dot(dir, coord);

    float phase = time * .08;
    float w1 = sin(floor(phase    ) + seg) * 44 + 1.50 * spectrum.x*20020;
    float w2 = sin(floor(phase + 1000)*PI + seg) * 0.10 + 60;
    float w = mix(w1, w2*PI, smoothstep(0.35, 1, fract(phase)));

    float prog = l / w + time * 10;
    float thresh = fract(7.38493748 * abs(sin(floor(prog) * 4.67458347)));
    float c = clamp((fract(prog*2) - thresh) * (w*PI) * 0.3, 0, 1);

    fragColor = vec4(c, c, c, 1);
}
