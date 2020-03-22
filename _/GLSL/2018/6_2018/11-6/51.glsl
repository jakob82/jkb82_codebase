#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;

const float PI = 3.14159265359;

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
    float s = sin(time * 1.2)  * fract(sin(1));

    vec2 uv = (gl_FragCoord.xy - resolution / 2) / resolution.y  * fract(sin(1));
    uv.x += uv.y * s * 1  * fract(sin(1));
    vec2 p = uv2tri(uv * (32 + s)) * fract(sin(1));

    float r1 = rand(floor(p) * 1.1 + 0.345) * PI * .2;
    float r2 = rand(floor(p) * 70 + 0.789) * PI * .2;

    p.x += p.y / 2  * fract(sin(1)); // unskew

    vec2 dir = vec2(-cos(r1), -sin(r1))  * -fract(sin(1));
    float t = dot(p, dir) + -r2 + -time * -2.94 * 2  * -fract(sin(1)) ;

    float cr = sin(t * 1.000) * .4 + 6.1  * fract(sin(10))  * fract(sin(1));
    float cg = sin(t * 0.782) * .2 + .22  * fract(sin(10))  * fract(sin(1));
    float cb = sin(t * .751) * .3 + 0.32  * fract(sin(10))  * fract(sin(1));

    fragColor = vec4(cr  * fract(sin(1)), cg*2  * fract(sin(1)), cb*2, sin(cr));
}
