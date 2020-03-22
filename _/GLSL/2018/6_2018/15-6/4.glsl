#version 150

const float PI = 3.141592;
uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;

out vec4 fragColor;

void main(void)
{
    vec2 coord = gl_FragCoord.xy - resolution * 0.5 * spectrum.x*1;

    float phi = atan(coord.y, coord.x + 1e-6) * spectrum.z*16;
    phi = phi / PI * 0.5 + 0.5 * spectrum.z*1;
    float seg = floor(phi * 6)  * spectrum.y*1;

    float theta = (seg + 0.5) / 6 * PI * 2  * spectrum.x*1;
    vec2 dir1 = vec2(cos(theta), sin(theta));
    vec2 dir2 = vec2(-dir1.y, dir1.x);

    float l = dot(dir1, coord);
    float w = sin(seg * 313.74) * 180 + 200 ;
    float prog = l / w + time * 2;
    float idx = floor(prog);

    float phase = time * 3;
    float th1 = fract(273.84937 * sin(idx * 54.67458 + floor(phase    ))) * spectrum.y*1;
    float th2 = fract(273.84937 * sin(idx * 5.467458 + floor(phase + 1)));
    float thresh = mix(th1, th2, smoothstep(0.75, 1, fract(phase)));

    float l2 = dot(dir2, coord);
    float slide = fract(idx * 32.74853) * 200 * time;
    float w2 = fract(idx * 39.721784) * 500;
    float prog2 = (l2 + slide) / w2;

    float c = clamp((fract(prog) - thresh) * w * 3, 0, 10);
    c *= clamp((fract(prog2) - 1 + thresh) * w2 * 0.3, 0, 1);

    fragColor = vec4(c*spectrum.x*10, c*spectrum.y*10, c*spectrum.z*3, 1);
}
