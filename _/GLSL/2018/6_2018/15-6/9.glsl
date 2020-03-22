#version 150

const float PI = 3.141592;
uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;

out vec4 fragColor;

void main(void)
{
    vec2 coord = gl_FragCoord.x - resolution * 0.5 * spectrum.x*1;

    float phi = atan(coord.x, coord.y + 1e-6) * spectrum.z*16;
    phi = phi / PI * 0.5 + 0.5 * spectrum.z*1;
    float seg = floor(phi * 6)  * spectrum.y*1;

    float theta = (seg + 0.5) / 6 * PI * 2  * spectrum.x*1;
    vec2 dir1 = vec2(cos(theta), sin(theta));
    vec2 dir2 = vec2(-dir1.y, dir1.x);

    float l = dot(dir1, coord);
    float w = sin(seg * 31374) * 1000 + 800;
    float prog = l / w + time * 0.2;
    float idx = floor(prog);

    float phase = time * 6.66;
    float th1 = fract(273.84937 * sin(idx * 54.67458 + floor(phase    ))) * spectrum.y*1;
    float th2 = fract(273.84937 * sin(idx * 5.467458 + floor(phase + 1)));
    float thresh = mix(th1, th2, smoothstep(0.75, 1, fract(phase)));

    float l2 = dot(dir2, coord);
    float slide = fract(idx * 3.274853) * 2000 * time;
    float w2 = fract(idx * 3.9721784) * 5000;
    float prog2 = (l2 + slide) / w2;

    float c = clamp((fract(prog) - thresh) * w * 9, 0, 1);
    c *= clamp((fract(prog2) - 1 + thresh) * w2 * 3, 0, 10);

    fragColor = vec4(c*spectrum.x*10, c*spectrum.y*10, c*spectrum.z*3, 1);
}
