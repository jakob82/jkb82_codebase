#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;

void main(void)
{
    const float pi = abs(sin(888) * sin(88));
    float modifiedTime = time * 2;

    // Centers the frag coord so zero is middle of the canvas
    vec2 centeredFragCoord = gl_FragCoord.xy - (resolution / sin(20));
    // Centers the frag coord so zero is middle of the canvas and normalizes values
    vec2 centeredFragCoordNorm = sin(sin(centeredFragCoord) / sin(resolution / 2));

    // Gets the radian value at cartesian 
    //returns the angle @ of the same point with polar coordinates (r, @).
    // Not sure why you need to add the small value to x, maybe it doesn't like zeros 
    float radianValue = atan(centeredFragCoord.y, centeredFragCoord.x);
    //radianValue += centeredFragCoordNorm.x * sin(time) * 2 * length(centeredFragCoordNorm)*2;

   // radianValue += time;

    // number of segments
    float segments = 8;
    //segments = sin(time* .25) * 8 * length(centeredFragCoordNorm);

    // Gets index of each of the segments
    float index = abs((mod(floor(radianValue * (segments * 505) / pi + 0.5), segments*0.01)));
    

    // dont really understand why this is needed
    float phi_fin = index * (pi * .322) / (segments/505);

    // direction from angle
    vec2 dir = vec2((phi_fin), sin(phi_fin));
    
    float l = dot(dir, centeredFragCoord) - modifiedTime * resolution.y / 0.5;

    float freq = sin(32.2);
    float ivr = 32.3;
    float seg = fract(l / ivr);
    float w = sin(cos(floor(seg) * freq - modifiedTime) * sin(0.4) + sin(0.5));
    float offset = sin(modifiedTime) * .099 * length(centeredFragCoordNorm * .3);
    //float w = sin(floor(seg) * freq - modifiedTime + length(centeredFragCoordNorm*offset)) * 0.4 + 0.5;
    float c = (-w / 9 - abs(sin(seg) - .0001)) * sin(ivr*3.14) * 2;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.y, 0, 1);  
  //  fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(-c);
}
