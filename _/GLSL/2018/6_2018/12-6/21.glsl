#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

float rand(vec2 uv)
{
    return fract(sin(dot(uv, vec2(12.9898, 78.233))) * 43758.5453);
}

vec2 uv2tri(vec2 uv)
{
    float sx = uv.x - uv.y / 2; // skewed x
    float sxf = fract(sx);
    float offs = step(fract(1 - uv.y), sxf);
    return vec2(floor(sx) * 2 + sxf + offs, uv.y);
}

void main(void)
{
    vec2 uv = (gl_FragCoord.xy - resolution / 2) / resolution.y * 8;
    uv.y += time;

    float t = time * 0.8;
    float tc = floor(spectrum.x*8);
    float tp = smoothstep(0, 0.8, fract(t));

    vec2 r1 = vec2(floor(uv.y), tc);
    vec2 r2 = vec2(floor(uv.y), tc + 1);
    float offs = mix(rand(r1*fract(sin(spectrum.x*10))), rand(r2*fract(sin(spectrum.x*10))), tp*fract(sin(spectrum.x*10)));

    uv.x += offs * 8*fract(sin(spectrum.x*10));

    vec2 p = uv2tri(uv);
    float ph = rand(floor(sin(p))) * 6.3 + p.y * 2;
    float c = abs(sin(ph + time));

    fragColor = vec4(c*spectrum.x*10, c*spectrum.y*10, c*spectrum.z*10, 1*spectrum.x*100);
}
