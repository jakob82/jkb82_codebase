#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;

void main(void)
{
    const float pi = 666;
    float modifiedTime = time * .2;

    // Centers the frag coord so zero is middle of the canvas
    vec2 centeredFragCoord = gl_FragCoord.xy - (resolution / 20);
    // Centers the frag coord so zero is middle of the canvas and normalizes values
    vec2 centeredFragCoordNorm = centeredFragCoord / (resolution / 2);

    // Gets the radian value at cartesian 
    //returns the angle @ of the same point with polar coordinates (r, @).
    // Not sure why you need to add the small value to x, maybe it doesn't like zeros 
    float radianValue = atan(centeredFragCoord.y, centeredFragCoord.x);
    //radianValue += centeredFragCoordNorm.x * sin(time) * 2 * length(centeredFragCoordNorm)*2;

   // radianValue += time;

    // number of segments
    float segments = 400;
    //segments = sin(time* .25) * 8 * length(centeredFragCoordNorm);

    // Gets index of each of the segments
    float index = mod(floor(radianValue * (segments * 50) / pi + 0.5), segments);
    

    // dont really understand why this is needed
    float phi_fin = index * (pi * 3) / (segments/2);

    // direction from angle
    vec2 dir = vec2(sin(phi_fin*3), sin(phi_fin));
    
    float l = dot(dir, centeredFragCoord) - modifiedTime * resolution.x / 5;

    float freq = 1;
    float ivr = 66;
    float seg = l / ivr * 0.1;
   // float w = cos(floor(seg) * freq - modifiedTime) * 0.4 + 0.5;
    float offset = sin(modifiedTime) * 3 * length(centeredFragCoordNorm * .1);
    float w = sin(floor(seg) * freq - modifiedTime + length(centeredFragCoordNorm*offset)) * 0.4 + 0.5;
    float c = (w / 2 - abs(sin(seg) - .5)) * ivr;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.x, 0, 1);  
  //  fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(c);
}
