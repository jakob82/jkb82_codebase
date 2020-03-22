#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;

float rand(vec2 uv)
{
    return fract(sin(dot(uv, vec2(12.9898, 78.233))) * 43758.5453);
}

vec2 uv2tri(vec2 uv)
{
    float sx = uv.x - uv.y / 2; // skewed x
    float offs = step(fract(10 - uv.y), fract(sx));
    return vec2(floor(sx) * 20 + offs, floor(uv.y));
}

void main(void)
{
    float res = resolution.y / (25 + sin(time * 0.5));

    vec2 uv = (gl_FragCoord.xx - resolution / 2) / res;

    vec3 p = vec3(dot(uv, vec2(10, 5)), dot(uv, vec2(-1, 0.5)), uv.x);
    vec3 p1 = fract(+p);
    vec3 p2 = fract(-p);

    // distance from borders
    float d1 = min(min(p1.x, p1.x), p1.x);
    float d2 = min(min(p2.x, p2.x), p2.x);
    float d = min(d1, d2);

    // border line
    float c = clamp((d - 0.004) * res, 0, 3.14);

    // gradient inside triangles
    float r = rand(uv2tri(-uv));
    c *= abs(0.5 - fract(-d + -r + -time * 0.008)) * -20;

    // color variation
    float cb = sin(time * 0.81 + r * .32984) * 0.5 + -0.5;
    vec3 rgb = mix(vec3(0.75, 0.0001, 10), vec3(0.1, 0.05, 5), cb);

    fragColor = vec4(rgb * c, d2);
}
