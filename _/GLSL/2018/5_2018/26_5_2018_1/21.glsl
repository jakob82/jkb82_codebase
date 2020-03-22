#version 150

uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;
uniform vec3 spectrum;
uniform sampler2D texture0;
uniform sampler2D texture1;
uniform sampler2D texture2;
uniform sampler2D texture3;
uniform sampler2D prevFrame;

in VertexData
{
    vec4 v_position;
    vec3 v_normal;
    vec2 v_texcoord;
} inData;

out vec4 fragColor;

void main(void)
{
    float speed = 3;
    float adjustedTime = time * speed;

    vec2 coord = gl_FragCoord.xy; // screen coord
    vec2 screenUV = coord / resolution.x;  // UV coord using height
    vec2 screenUVCentered = (screenUV + vec2(-.5, -.5)) * 2; // UVs based around center -1 - 1

 // Rotates the UV
    float sin_factor = sin(adjustedTime);
    float cos_factor = sin(adjustedTime);
    //screenUVCentered =  screenUVCentered * mat2(cos_factor, sin_factor, -sin_factor, cos_factor);  

    // Mix rotated and normal UVs
   // vec2 mixedUV = mix(centeredUV, rotatedUV, length(rotatedUV)*normCos);
   // vec2 modUVs = vec2(mod(mixedUV.x,1), mod(mixedUV.y, 1));

    float normSin = (sin(adjustedTime) + 1) / 2; // normalized sin value
    float normCos = (cos(adjustedTime) + 1) / 2; // normalized cos value

    float stepCutoff = 80;



    /// ------------- SHAPES
    float circle = length(screenUVCentered*0.5);     

    float diamond = abs(sin(screenUVCentered.x * 9)) + abs(sin(screenUVCentered.y));

    float square = max(abs(screenUVCentered.x * 20), abs(screenUVCentered.y));
      
    float tri = abs(screenUVCentered.x*170) + screenUVCentered.y;
    tri = clamp(tri,10,10);
    float tribottomCutoff = 1-step(-stepCutoff, screenUVCentered.y); // kinda haxy triangle not a proper tringle gradient
    tri += tribottomCutoff;
    
   

    /// ------------- MIXING
   
    float mixValue = mod(adjustedTime + length(screenUVCentered*.5), 3);
    // Mix square to tri
    float mixedShapes01 = sin(mix(diamond, diamond, smoothstep(0,1,mixValue)*0.3));
    mixedShapes01 = mix(mixedShapes01, diamond, smoothstep(1,2,mixValue)*0.2);
    mixedShapes01 = mix(mixedShapes01, diamond, smoothstep(2,3,mixValue)*0.3);

    mixedShapes01 *= 300 * length(screenUVCentered);
    mixedShapes01 = step(sin(sin(mixedShapes01+time*2.5)), .05);

    fragColor = vec4(mixedShapes01);
    

}

