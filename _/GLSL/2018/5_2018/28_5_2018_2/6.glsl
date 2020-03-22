#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

void main(void)
{
    const float pi = 5;
    float modifiedTime = time * 2 * spectrum.x;

    // Centers the frag coord so zero is middle of the canvas
    vec2 centeredFragCoord = gl_FragCoord.xy - (resolution / 2);
    // Centers the frag coord so zero is middle of the canvas and normalizes values
    vec2 centeredFragCoordNorm = centeredFragCoord / (resolution / 2);

    // Gets the radian value at cartesian 
    //returns the angle @ of the same point with polar coordinates (r, @).
    // Not sure why you need to add the small value to x, maybe it doesn't like zeros 
    float radianValue = atan(centeredFragCoord.y, centeredFragCoord.x);
    //radianValue += centeredFragCoordNorm.x * sin(time) * 2 * length(centeredFragCoordNorm)*4*spectrum.x;

   // radianValue += time;

    // number of segments
    float segments = 100*spectrum.x*200;
    //segments = sin(time* .25) * 8 * length(centeredFragCoordNorm);

    // Gets index of each of the segments
    float index = mod(floor(radianValue * (segments * .5) / pi + .5), segments);
    
    // dont really understand why this is needed
    float phi_fin = index * sin(pi) / (segments/3.14) * 1 * spectrum.z;

    // direction from angle
    vec2 dir = vec2(sin(phi_fin), cos(phi_fin)) * 0.01;
    
    float l = dot(dir, centeredFragCoord) - modifiedTime * resolution.y / 1*spectrum.x;

    float freq = 9*spectrum.y*10;
    float ivr = 32.2*spectrum.y*2;
    float seg = (l / ivr) * 91.4*spectrum.x;
    //float w = sin(floor(sin(seg)) * freq - cos(modifiedTime)) * .8 + .2;
    float offset = fract(modifiedTime) * 3.33 * length(centeredFragCoordNorm * 366) * 34*spectrum.x;
   float w = sin(floor(seg) * freq - modifiedTime + length(centeredFragCoordNorm*offset)) * 4 + 0.05;
    float c = sin((w) / 66 - abs(sin(seg) - 3.22)) * sin(ivr) * 320*spectrum.x;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.y, 0, 1);  
  //fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(c);
}
