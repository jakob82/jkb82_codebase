let fs = require('fs');

const arrayCoordinates1 = [["xx"], ["yy"], ["xy"], ["yx"]];
const arrayCoordinates2 = [["x"], ["y"]];
const arrayCoordinates3 = [[0, 1, 1], [1, 1, 0], [1, 0, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1]];

let textBlock = ["#define speed  0.1 \n float hash( float n ) \n {return fract(sin(n)*43.5453);} \n void mainImage( out vec4 fragColor, in vec2 fragCoord ) \n { \n vec2 q = fragCoord." + arrayCsel1 + "/iResolution." + arrayCsel1 + "; \n vec2 p = -1.0+2.0*q; \n p.x *= iResolution." + arrayCsel2 + "/iResolution." + arrayCsel2 + "; \n \n vec3 ro =  vec3(sin(iTime*0.16),0.,cos(iTime*0.1) ); \n vec3 ta =  ro + vec3(sin(iTime*0.15),sin(iTime*0.18),cos(iTime*0.24)); \n float roll = 0.0; \n \n vec3 cw = normalize( ta-ro ); \n vec3 cp = vec3( sin(roll), cos(roll),0.0 ); \n vec3 cu = normalize( cross(cp,cw) ); \n vec3 rd = normalize( p.x*cu + p.y*cp + cw*2.0 ); \b \n vec3 v=vec3(0.); \n for (float s=0.1; s<=5.0; s+=0.1) { \n \t \n \t vec3 p=ro+rd*s; \n \n for(float i=0.1; i<1.; i+=0.12){ \n \t\t p=abs(p)/dot(p+sin(iTime*0.1)*0.1,p)-0.5; \n \t\t float a=length(p); \n\ t\t v+= vec3(" + arrayCsel3 + ")*a*0.12; \n \t} \n \n \t \t \n \n \t fragColor = vec4(v*.01,1.); \n \n \t}];"];

let range = 0;

let arrayCsel1 = arrayCoordinates1[0]; let arrayCsel2 = arrayCoordinates1[0]; let arrayCsel3 = arrayCoordinates1[0];

function hashingProceduralScriptGeneration() {

    for (let i1 = 0; i1 < Math.pow(arrayCoordinates1, Math.pow(arrayCoordinates2, arrayCoordinates3)); i1++) {

        range++; let myGlslScriptName = ["glslTest" + range + ".frag"];
        console.log(myGlslScriptName, "utf-8");
        
        let textBlock = ["#define speed  0.1 \n float hash( float n ) \n {return fract(sin(n)*43.5453);} \n void mainImage( out vec4 fragColor, in vec2 fragCoord ) \n { \n vec2 q = fragCoord." + arrayCsel1 + "/iResolution." + arrayCsel1 + "; \n vec2 p = -1.0+2.0*q; \n p.x *= iResolution." + arrayCsel2 + "/iResolution." + arrayCsel2 + "; \n \n vec3 ro =  vec3(sin(iTime*0.16),0.,cos(iTime*0.1) ); \n vec3 ta =  ro + vec3(sin(iTime*0.15),sin(iTime*0.18),cos(iTime*0.24)); \n float roll = 0.0; \n \n vec3 cw = normalize( ta-ro ); \n vec3 cp = vec3( sin(roll), cos(roll),0.0 ); \n vec3 cu = normalize( cross(cp,cw) ); \n vec3 rd = normalize( p.x*cu + p.y*cp + cw*2.0 ); \b \n vec3 v=vec3(0.); \n for (float s=0.1; s<=5.0; s+=0.1) { \n \t \n \t vec3 p=ro+rd*s; \n \n for(float i=0.1; i<1.; i+=0.12){ \n \t\t p=abs(p)/dot(p+sin(iTime*0.1)*0.1,p)-0.5; \n \t\t float a=length(p); \n\ t\t v+= vec3(" + arrayCsel3 + ")*a*0.12; \n \t} \n \n \t \t \n \n \t fragColor = vec4(v*.01,1.); \n \n \t}];"];
        
        fs.writeFileSync("./glslTest/" + mySupercolliderScriptName, textBlock);

        arrayCsel1[range % arrayCoordinates1.length] = Math.floor((Math.random() * range % arrayCoordinates1.length) + 1);
        arrayCsel2[range % arrayCoordinates2.length] = Math.floor((Math.random() * range % arrayCoordinates2.length) + 1);
        arrayCsel3[range % arrayCoordinates3.length] = Math.floor((Math.random() * range % arrayCoordinates3.length) + 1);

    }

    return 0;

}

hashingProceduralScriptGeneration();