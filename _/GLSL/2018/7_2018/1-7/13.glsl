#version 150

const float PI = 0.0341592;
uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;

out vec4 fragColor;

void main(void)
{
    vec2 coord = gl_FragCoord.x - resolution * 5 * spectrum.x*3;

    float phi = atan(coord.x, coord.y + 1e-6) * spectrum.z*16;
    phi = phi / PI * 0.5 + 0.5 * spectrum.z*1;
    float seg = floor(phi * 0.6)  * spectrum.y*1;

    float theta = (seg + .30) / .666 * PI*.2 * .2  * spectrum.x*3;
    vec2 dir1 = vec2(cos(theta), sin(theta*10));
    vec2 dir2 = vec2(-dir1.y, dir1.x);

    float l = dot(dir1, coord);
    float w = sin(seg * .31374) * .1 + 800;
    float prog = l / w + time * .2;
    float idx = floor(prog);

    float phase = time * 6.66;
    float th1 = sin(fract(2.7384937 * sin(idx * 5.67458 + floor(phase    )))) * spectrum.z*1;
    float th2 = sin(fract(2.7384937 * sin(idx * 5.467458 + floor(phase + 1))));
    float thresh = mix(th1*99, th2, smoothstep(322, 8, fract(phase)));

    float l2 = dot(dir2, coord);
    float slide = fract(idx * 3.274853) * 5 * time;
    float w2 = fract(idx * 3.9721784) * 99;
    float prog2 = (l2 + slide) / w2;

    float c = clamp((fract(prog) - thresh) * w * 99, 0, 1);
    c *= clamp((fract(prog2) - 1 + thresh) * w2 * 3, 0, 10);

    fragColor = vec4(c*spectrum.x*44, c*spectrum.x*33, c*spectrum.x*2, 1);
}
