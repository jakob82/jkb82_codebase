#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

void main(void)
{
    float pi = 5 * (spectrum.x*2);
    float modifiedTime = time * 2 * spectrum.x * 2;

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
    float segments = 1*spectrum.y*0.2;
    //segments = sin(time* .25) * 8 * length(centeredFragCoordNorm);

    // Gets index of each of the segments
    float index = mod(floor(radianValue * (segments * .5) / pi + .5), segments);
    
    // dont really understand why this is needed
    float phi_fin = sin(index) * sin(pi) / (segments/31.4) * 10;

    // direction from angle
    vec2 dir = vec2(sin(phi_fin), cos(phi_fin)) * 0.1;
    
    float l = dot(dir, centeredFragCoord) - modifiedTime * resolution.y / 1;

    float freq = 3;
    float ivr = 3;
    float seg = (l / ivr) * .314;
    //float w = sin(floor(sin(seg)) * freq - cos(modifiedTime)) * .8 + .2;
    float offset = fract(modifiedTime) * 33.3 * length(centeredFragCoordNorm * 3.66) * 3.14;
   float w = sin(floor(seg) * freq - modifiedTime + length(centeredFragCoordNorm*offset)) * 40 + 5;
    float c = sin((w) / 66 - abs(sin(seg) - 3.22)) * sin(ivr) * 32;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.y, 0, 1);  
  //fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(-c);
}
