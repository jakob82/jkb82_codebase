#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

void main(void)
{
    float pi = (time*10);
    float modifiedTime = time * (time*10) * spectrum.x;

    // Centers the frag coord so zero is middle of the canvas
    vec2 centeredFragCoord = gl_FragCoord.xy - (resolution / 2);
    // Centers the frag coord so zero is middle of the canvas and normalizes values
    vec2 centeredFragCoordNorm = centeredFragCoord / (resolution / 2);

    // Gets the radian value at cartesian 
    //returns the angle @ of the same point with polar coordinates (r, @).
    // Not sure why you need to add the small value to x, maybe it doesn't like zeros 
    float radianValue = atan(centeredFragCoord.y, centeredFragCoord.x);
    //radianValue += centeredFragCoordNorm.x * sin(time) * 2 * length(centeredFragCoordNorm)*(time*10);

   // radianValue += time;

    // number of segments
    float segments = sin(time*(time*10))*spectrum.y;
    //segments = sin(time* .25) * 8 * length(centeredFragCoordNorm);

    // Gets index of each of the segments
    float index = mod(floor(radianValue * (segments * (time*10)) / pi * (time*2) + 5), segments) * time;
    
    // dont really understand why this is needed
    float phi_fin = fract(index * sin(pi*(time*2)) / (segments/114 * (time*1)) * sin(.5)*1.0);

    // direction from angle
    vec2 dir = vec2(sin(time*2), cos(phi_fin)) * 0.5;
    
    float l = dot(dir, centeredFragCoord) - modifiedTime * resolution.y / 1;

    float freq = 2*(time*10);
    float ivr = 40;
    float seg = sin((l / ivr)) * 11.4;
    //float w = sin(floor(sin(seg)) * freq - cos(modifiedTime)) * .8 + .2;
    float offset = sin(modifiedTime) * 333 * length(centeredFragCoordNorm * .366) * 3.14;
   float w = sin(floor(seg) * freq - modifiedTime + length(centeredFragCoordNorm*offset)) * 12.0 + .5 * (time*0.1);
    float c = sin((w) / 666 - abs(sin(seg) - 3.22)) * sin(ivr) * 32;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.y, 0, 1);  
  //fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(c);
}
