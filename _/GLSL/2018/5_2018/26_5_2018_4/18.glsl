#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;

void main(void)
{
    const float pi = 999;
    float modifiedTime = time * 4;

    // Centers the frag coord so zero is middle of the canvas
    vec2 centeredFragCoord = gl_FragCoord.xy - (resolution / 2);
    // Centers the frag coord so zero is middle of the canvas and normalizes values
    vec2 centeredFragCoordNorm = centeredFragCoord / (resolution / 2);

    // Gets the radian value at cartesian 
    //returns the angle @ of the same point with polar coordinates (r, @).
    // Not sure why you need to add the small value to x, maybe it doesn't like zeros 
    float radianValue = atan(sin(centeredFragCoord.y), sin(centeredFragCoord.x));
    //radianValue += centeredFragCoordNorm.x * sin(time) * 2 * length(centeredFragCoordNorm)*2;

   // radianValue += time;

    // number of segments
    float segments = 3;
    //segments = sin(time* .25) * 8 * length(centeredFragCoordNorm);

    // Gets index of each of the segments
    float index = mod(floor(radianValue * (segments * 666) / pi + 0.5), segments);
    

    // dont really understand why this is needed
    float phi_fin = index * (pi * 6.66) / (segments/0.01);

    // direction from angle
    vec2 dir = vec2(sin(phi_fin), fract(phi_fin));
    
    float l = dot(dir, centeredFragCoord) - modifiedTime * resolution.y / 0.5;

    float freq = 222;
    float ivr = 66.6;
    float seg = l / ivr;
   float w = sin((fract(floor(seg) * freq - modifiedTime) * 4) + 1);
    float offset = fract(modifiedTime) * 3.939 * length(centeredFragCoordNorm * 3);
    //float w = fract(floor(seg) * freq - modifiedTime + length(centeredFragCoordNorm*offset)) * 4 + 0.5;
    float c = (w / 32.2 - abs(sin(seg) - .05)) * ivr;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.y, 0, 1);  
  //  fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(((-c)*0.5));
}
