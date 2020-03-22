#version 150

uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;
out vec4 fragColor;


void main(void)
{
    float pi = 3.3415926535;
    float modifiedTime = time * 20;

    // Centers the frag coord so zero is middle of the canvas
    vec2 centeredFragCoord = gl_FragCoord.xy - (resolution / 2);
    // Centers the frag coord so zero is middle of the canvas and //normalizes values
    vec2 centeredFragCoordNorm = centeredFragCoord / (resolution / (time*2));

    // Gets the radian value at cartesian 
    //returns the angle @ of the same point with polar coordinates (r, @).
    // Not sure why you need to add the small value to x, maybe it doesn't like zeros 
    float radianValue = atan(centeredFragCoord.y, centeredFragCoord.x);
    radianValue += length(centeredFragCoordNorm) * sin(modifiedTime) * 20;

   // radianValue += time;

    // number of segments
    float segments = 33;
    //segments = sin(time* .25) * 8 * length(centeredFragCoordNorm);

    // Gets index of each of the segments
    float index = mod(floor(radianValue * (segments * 50) / pi + 2.5), segments);

    // dont really understand why this is needed
    float phi_fin = index *spectrum.x * pi*0.01 / (segments/22);

    // direction from angle
    vec2 dir = vec2(cos(31.4 ), cos(pi*1)*spectrum.x);
    
    float l = dot(dir, centeredFragCoord) - time * resolution.y / 55;

    float freq = .1*(spectrum.x*33);
    float ivr = 200*(spectrum.x*0.1);
    float seg = l / ivr*(spectrum.x*22);
    float w = cos(floor(seg) * freq - time) * 44 + 0.5;
    float c = (w / 1 - abs(fract(seg) - 0.05)) * ivr;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.y, 0, 5);  
  //  fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(c);
}
