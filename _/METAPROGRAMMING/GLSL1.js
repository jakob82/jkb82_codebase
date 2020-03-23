let fs = require('fs');

const vec3Valus = [
    ["1, 0, 0"],
    ["0, 1, 0"],
    ["0, 0, 1"],
    ["1, 0, 1"],
    ["0, 1, 1"],
    ["1, 1, 0"],
];

const xyCoordinates1 = [
    ["xx"],
    ["yy"],
    ["xy"],
    ["yx"]
];

const matrix1 = [
    ["1, 0.5, -1, 0.5"],
    ["0.5, 0.5, -1, 1"],
    ["0.5, 0.5, -1, 0.5"],
    ["0.75, 0.125, -1, 0.5"],
    ["0.75, 0.125, -1, 0.5"],
    ["0.125, 0.25, -1, 0.75"],
    ["0.25, 0.25, -1, 0.75"],
    ["0.25, 0.25, -1, 0.45"],
]

const xyCoordinates2 = ["x", "y"];

let range = 0; let textBlock;


function hashingProceduralScriptGeneration() {
    
    for (let i1 = 0; i1 < 2000; i1++) {
        
        range++; let glslShaderName = ["glslTest" + range + ".frag"];
        
        console.log(glslShaderName, "utf-8");
        
        let textBlock="const mat2 m = mat2 ("+ matrix1[i1 % 7 % matrix1.length] + ");" 
        +   "\n\n float hash( vec2 p ) "
        +   "\n { \n\t float h = dot(p,vec2(127.1,311.7)); "
        +   "\n\t return -1.0 + 2.0*fract(sin(h)*43758.5453123); "
        +   "\n } \n\n float noise( in vec2 p ) \n\n {"
        +   "\n\t vec2 i = floor( p ); \n\t vec2 f = fract( p );" 
        +   "\n\t vec2 u = f*f*(3.0-2.0*f); \n\t return mix( mix( hash( i + vec2(0.0,0.0) ), " 
        +   "\n\t hash( i + vec2(1.0,0.0) ), u."+ xyCoordinates2[i1 % 7 % xyCoordinates2.length] 
        +   "), \n\t mix( hash( i + vec2(0.0,1.0) ), "
        +   "\n\t hash( i + vec2(1.0,1.0) ), u."+ xyCoordinates2[i1 % 7 % xyCoordinates2.length] + "), u." 
        +   xyCoordinates2[i1 % 7 % xyCoordinates2.length] 
        +   "); \n } \n\n float fbm( vec2 p ) \n {" 
        +   "\n\t float f = 0.0; \n\t f += 0.5000*noise( p ); p = m*p*2.02; "
        +   "\n\t f += 0.2500*noise( p ); p = m*p*2.03; \n\t f += 0.1250*noise( p ); p = m*p*2.01; "
        +   "\n\t f += 0.0625*noise( p ); \n\t return f/0.9375; \n } \n\n vec2 fbm2( in vec2 p ) \n {" 
        +   "\n\t return vec2( fbm(p." + xyCoordinates1[i1 % 5 % xyCoordinates1.length] + "), fbm(p." 
        +   xyCoordinates1[i1 % 13 % xyCoordinates1.length] + ") ); \n } \n\n vec3 map( vec2 p ) \n {   "
        +   "\n\t p *= 0.7; \n\n \n\t float f = dot( fbm2( 1.0*(0.05*iTime + p + fbm2(-0.05*iTime+2.0*(p + fbm2(4.0*p)))) ), vec2(1.0,-1.0) ); "
        +   "\n\n \n\t float bl = smoothstep( -0.8, 0.8, f ); \n\n \n\t float ti = smoothstep( -1.0, 1.0, fbm(p) ); "
        +   "\n\n \n\t return mix( mix( vec3(" +  vec3Valus[i1 % 3 % vec3Valus.length]  
        +   "), \n\t vec3(" +  vec3Valus[i1 % 7 % vec3Valus.length] +"), ti ), \n\t vec3(" +  vec3Valus[i1 % 11 % vec3Valus.length]  + "), bl ); "
        +   "\n} \n void mainImage( out vec4 fragColor, in vec2 fragCoord ) \n { \n\t vec2 p = (-iResolution." + xyCoordinates1[i1 % 7 % xyCoordinates1.length] 
        + "+2.0*fragCoord." + xyCoordinates1[i1 % 13 % xyCoordinates1.length] + ")/iResolution." + xyCoordinates2[i1 % 5 % xyCoordinates2.length] + "; "
        +   "\n\t\n \n\t float e = 0.0045; \n\t\n \n\t vec3 colc = map( p ); float gc = dot(colc,vec3(0.333)); "
        +   "\n\t vec3 cola = map( p + vec2(e,0.0) ); float ga = dot(cola,vec3(0.333)); "
        +   "\n\t vec3 colb = map( p + vec2(0.0,e) ); float gb = dot(colb,vec3(0.333)); "
        +   "\n\t\n  \n\t vec3 nor = normalize( vec3(ga-gc, e, gb-gc ) ); "
        +   "\n\t\n\n\t vec3 col = colc; \n\t col += vec3(1.0,0.7,0.6)*8.0*abs(2.0*gc-ga-gb); "
        +   "\n\t col *= 1.0+0.2*nor." + xyCoordinates2[i1 % 11 % 2] + "*nor." +  xyCoordinates2[i1 % 13 % 2]  
        +   "; \n\t col += 0.05*nor." +  xyCoordinates2[i1 % 7 % 2]  + "*nor." +  xyCoordinates2[i1 % 17 % 2]  
        +   "*nor." +  xyCoordinates2[i1 % 3 % 2]  + "; "
        +   "\n\t\n\n\t\n\n\t vec2 q = fragCoord." + xyCoordinates1[i1 % 13 % xyCoordinates1.length] + "/iResolution." + xyCoordinates1[i1 % 13 % xyCoordinates1.length] + ";"
        +   "\n\t col *= pow(32.0*q." +  xyCoordinates2[i1 % 3 % 2]  + "*q." +  xyCoordinates2[i1 % 5 % 2]  + "*(1.0-q." 
        +   xyCoordinates2[i1 % 7 % 2]  +")*(1.0-q." +  xyCoordinates2[i1 % 11 % 2]  + "),0.1); "
        +   "\n\t\n\n\t fragColor = vec4( col, 3.0 ); \n }";
        
        fs.writeFileSync("./GLSL1/" + glslShaderName, textBlock);
         
    }
    
    return 0;
    
}

hashingProceduralScriptGeneration();