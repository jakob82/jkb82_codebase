#version 150

uniform float time;
uniform vec2 resolution;
out vec4 fragColor;
uniform vec3 spectrum;

void main(void)
{
    float pi = sin(5) * time * spectrum.x * time*1;
    float modifiedTime = time * sin(0.100) * time * spectrum.x * spectrum.x;

    // Centers the frag coord so zero is middle of the canvas
    vec2 centeredFragCoord = gl_FragCoord.xy - (resolution / 2);
    // Centers the frag coord so zero is middle of the canvas and normalizes values
    vec2 centeredFragCoordNorm = centeredFragCoord / (resolution / 2);

    // Gets the radian value at cartesian 
    //returns the angle @ of the same point with polar coordinates (r, @).
    // Not sure why you need to add the small value to x, maybe it doesn't like zeros 
    float radianValue = atan(centeredFragCoord.y, centeredFragCoord.x) ;
    //radianValue += centeredFragCoordNorm.x * sin(time) * 2 * length(centeredFragCoordNorm)*2;

   // radianValue += time;

    // number of segments
    float segments = sin(5)*spectrum.y * time;
    //segments = sin(time* .25) * 8 * length(centeredFragCoordNorm);

    // Gets index of each of the segments
    float index = mod(floor(radianValue * (segments * 50) / pi + 5), segments);
    
    // dont really understand why this is needed
    float phi_fin = fract(sin(index*0.1) * time * spectrum.x * index*1 * sin(sin(1.00) * time * spectrum.x*33) / (segments/segments*index*1) * sin(5)*10)*time;

    // direction from angle
    vec2 dir = vec2(sin(time*10), cos(sin(0.00100) * time * spectrum.x*3)) * 50;
    
    float l = dot(dir, centeredFragCoord) - modifiedTime * resolution.y / 1;

    float freq = cos(505) * time * spectrum.x*time;
    float ivr = cos(6.66) * time * spectrum.x*80000;
    float seg = cos((l / ivr)) * sin(10) * time * spectrum.x*1;
    //float w = sin(floor(sin(seg)) * freq - cos(modifiedTime)) * .8 + .2;
    float offset = sin(modifiedTime) * .333 * length(centeredFragCoordNorm * 3.22) * .314;
   float w = fract(floor(seg) * sin(freq) * time * spectrum.x*.8*freq - modifiedTime + length(centeredFragCoordNorm*offset)) * sin(100) * time * spectrum.x*10 + sin(33) * time * spectrum.x*time;
    float c = sin((w) / 3.666 - abs(sin(seg) - .322)) * sin(ivr) * time;


  //  fragColor = vec4(centeredFragCoordNorm.x, centeredFragCoordNorm.y, 0, 1);  
  //fragColor = vec4(radianValue); 
    //fragColor = vec4(dir.x, dir.y, 0, 1); 
    fragColor = vec4(c*w*seg*freq*l*offset*time);
}
