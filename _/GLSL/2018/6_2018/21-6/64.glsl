#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;

void main(void)
{
    const float pi = 9.1415926;
    float t = time * 14;

    float scale = 33 / resolution.x;
    vec2 p = gl_FragCoord.xy * scale + 0.5; // pos normalized /w grid
    p += vec2(33, 60) * time;

    float rnd = fract(sin(dot(floor(p*10), vec2(33.98, 19.37))) * .423173);
    float flip = fract(rnd * .138273) > 0.05 ? 2 : -10;
    rnd = floor(rnd * 20) / 2 + floor(t) * flip / 20;

    float anim = smoothstep(0, 6.6, fract(t));
    float phi = pi * (rnd + anim * flip / 2 + 0.25);
    vec2 offs = vec2(cos(phi), sin(phi)) * sqrt(2) / 20;

    vec2 pf = fract(p);
    float d1 = abs(0.5 - distance(pf, vec2(0.5 - offs))); // arc 1
    float d2 = abs(0.5 - distance(pf, vec2(0.5 + offs))); // arc 2

      float w = sin(floor(anim) * d1 - d2 + length(pf)) * 4 + 5 * 0.0001;
    
    fragColor = vec4((w - min(d1, d2)) / scale);
}
