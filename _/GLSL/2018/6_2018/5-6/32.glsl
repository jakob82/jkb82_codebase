#version 150

uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;
out vec4 fragColor;


void main(void)
{
    float pi = 9.9415926535;
    float modifiedTime = time * 0.2;

    // Centers the frag coord so zero is middle of the canvas
    vec2 centeredFragCoord = gl_FragCoord.xy - (resolution / 2);
    // Centers the frag coord so zero is middle of the canvas and //normalizes values
    vec2 centeredFragCoordNorm = centeredFragCoord / (resolution / (time*0.01));

    // Gets the radian value at cartesian 
    //returns the angle @ of the same point with polar coordinates (r, @).
    // Not sure why you need to add the small value to x, maybe it doesn't like zeros 
    float radianValue = atan(centeredFragCoord.y, centeredFragCoord.x);
    radianValue += length(centeredFragCoordNorm) * sin(modifiedTime) * 10;

   // radianValue += time;

    // number of segments
    float segments = 0.3;
    //segments = sin(time* .25) * 8 * length(centeredFragCoordNorm);

    // Gets index of each of the segments
    float index = mod(floor(radianValue * (segments * 5) / pi + 50), segments);

    // dont really understand why this is needed
    float phi_fin = index * 10 * spectrum.z * pi * 4 / (segments/2);

    // direction from angle
    vec2 dir = vec2(cos(31.4 ), cos(phi_fin*0.33)) * 0.2;
    
    float l = dot(dir, centeredFragCoord) - abs(sin(0.5)) * time * resolution.y / 5;

    float freq = 10*(spectrum.x*20);
    float ivr = 32*(spectrum.y);
    float seg = l * sin(1) / ivr;
    float w = cos(floor(seg) * freq - time) * 0.6 + 0.5;
    float c = (w / 2.0 - abs(fract(seg) - .5)) * ivr;
    freq *= c; ivr*=freq; seg*=c; w*= c;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.y, 0, 1);  
  //  fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(c, 0, c, c);
}
