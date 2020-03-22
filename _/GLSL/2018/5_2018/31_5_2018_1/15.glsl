#version 150

uniform float time;
uniform vec2 resolution;
uniform vec3 spectrum;
out vec4 fragColor;


void main(void)
{
    float pi = 31.415926535;
    float modifiedTime = time * 20;

    // Centers the frag coord so zero is middle of the canvas
    vec2 centeredFragCoord = gl_FragCoord.xy - (resolution / 2);
    // Centers the frag coord so zero is middle of the canvas and normalizes values
    vec2 centeredFragCoordNorm = centeredFragCoord / (resolution / 2);

    // Gets the radian value at cartesian 
    //returns the angle @ of the same point with polar coordinates (r, @).
    // Not sure why you need to add the small value to x, maybe it doesn't like zeros 
    float radianValue = atan(centeredFragCoord.y, centeredFragCoord.x);
    radianValue += length(centeredFragCoordNorm) * sin(modifiedTime) * 10;

   // radianValue += time;

    // number of segments
    float segments = 3000 * cos(spectrum.x) * 0.1;
    segments = sin(time* .25) * 8 * length(centeredFragCoordNorm) * spectrum.x;

    // Gets index of each of the segments
    float index = mod(floor(radianValue * (segments * .5) / pi + 0.5), segments)  * cos(spectrum.x) * 0.1;

    // dont really understand why this is needed
    float phi_fin = (index * spectrum.x * 10) *spectrum.z * sin(pi)*time*3 / (segments/20) * time * 10 * cos(spectrum.x) * 0.1;

    // direction from angle
    vec2 dir = vec2(cos(3.14 ), cos(time*0.5)) * 10 * spectrum.x*100;
    
    float l = dot(dir, centeredFragCoord) - time * resolution.y / 5;

    float freq = .01*(spectrum.x*10);
    float ivr = 200*(spectrum.y*10);
    float seg = l / ivr*(spectrum.y*2) * spectrum.x*10;
    float w = cos(floor(seg) * freq - time) * 0.4 + 0.5;
    float c = (w / 2 - abs(fract(seg*time*0.001) - 0.5)) * ivr * time * spectrum.x;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.y, 0, 1);  
  //  fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(c*time);
}
