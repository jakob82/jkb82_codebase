#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;

const float PI = 3.14159265359;

float rand(float x, float y)
{
    return fract(sin(dot(vec2(x, y), vec2(12.9898, 78.233))) * 43758.5453);
}

void main(void)
{
    vec2 p = gl_FragCoord.xy / resolution * 2 - 1;
    p.x *= resolution.x / resolution.y;
    p = vec2(atan(p.y, p.x) / PI / 2 + 0.5, length(p));

    p.y = p.y * 4 - time * 2;

    float r = floor(p.x);
    p.x /= ceil(8 * rand(r, 0.10));
    p.x += time * mix(-2, 2, rand(r, 0.2));
    
    fragColor = vec4(step(0.5, fract(p.y)) * step(0.3, fract(p.x)));
}
