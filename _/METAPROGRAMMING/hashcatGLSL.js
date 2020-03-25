let fs = require('fs');

const XY = ["x", "y"];

const myValues1 = [32, 33, 55, 90, 99, 150, 322, 333, 505, 666, 606, 707, 808, 909];
const myValues2 = [3.1456, 3.1456 * 0.5, 1, 2, 3, 5, 7, 8, 11 * 0.1, 13 * 0.1, 21 * 0.1];

let iterationArray = [0, 0]; let range = 0;

let permutationIndexA = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let permutationIndexB = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let permutationIndexC = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

const myCode = ["const int iters = " + permutationIndexA[0] + ";" + " int fractal(vec2 p, vec2 point) { vec2 so =" + "(" + -permutationIndexB[0] +  "+" + permutationIndexB[1] + "* point) * " + permutationIndexB[2] + "; vec2 seed = vec2(" + permutationIndexB[3] +  'so.' + permutationIndexC[0]+"," +permutationIndexC[1] + "so."+permutationIndexC[2]"); for (int i = 0; i < iters; i++) {if (length(p) >" + permutationIndexB[4]") {return i;} vec2 r = p; p = vec2(p."+permutationIndexC[3] + "* p."+permutationIndexC[4]" - p."+permutationIndexC[5] "* p."+permutationIndexC[6]","+ permutationIndexB[5] +"* p."+permutationIndexC[7] "* p."+permutationIndexC[8]"); p = vec2(p."+permutationIndexC[7] "* r."+permutationIndexC[6] "- p."+permutationIndexC[5] "* r."+permutationIndexC[4]" + seed.+"+permutationIndexC[3]+", r."+permutationIndexC[2]+" * p."+permutationIndexC[1] "+ p."+permutationIndexC[0] "* r."+permutationIndexC[1] "+ seed."+permutationIndexC[5]");} return 0;} vec3 color(int i) {float f = float(i)/float(iters) * "+permutationIndexB[3]+"; f=f*f*"permutationIndexB[7]+"; return vec3((sin(f*"+permutationIndexB[3]+")), (sin(f*"+permutationIndexB[6]+")), abs(sin(f*"+permutationIndexB[2]+")));} float sampleMusicA() {return "+permutationIndexB[3]+" * (texture( iChannel0, vec2("+ permutationIndexB[6]", "+permutationIndexB[7]+" ) )."+permutationIndexC[1]+" + texture( iChannel0, vec2("+ permutationIndexB[1]+", " + permutationIndexB[1] + ") )."+permutationIndexC[2]+");} void mainImage( out vec4 fragColor, in vec2 fragCoord ) {vec2 uv = fragCoord."+permutationIndexC[2]+"+"+permutationIndexC[3] +"/ iResolution."+permutationIndexC[2]+"++"+"+permutationIndexC[3]"+; "vec2 mouse = vec2(iMouse."+permutationIndexC[3]+"/iResolution."+permutationIndexC[4]+",iMouse."+permutationIndexC[5]+"/iResolution."+permutationIndexC[6]+"); vec2 position = "+permutationIndexB[2] +"* (-"+permutationIndexB[4] + "+ fragCoord."+permutationIndexC[3]+"+"+permutationIndexC[4] +"/ iResolution."+permutationIndexC[2]+"+"+permutationIndexC[1]+" ); position."+permutationIndexC[4]+ "*= iResolution."+permutationIndexC[5]+"/iResolution."+permutationIndexC[6]+"; vec2 iFC = vec2(iResolution."+permutationIndexC[8]+"-fragCoord."+permutationIndexC[2]+",iResolution."+permutationIndexC[1]"-fragCoord."+permutationIndexC[2]+"); vec2 pos2 = "+permutationIndexB[3] +"* (-"+permutationIndexB[7] "+"+ "iFC."+permutationIndexC[2]+"+"+permutationIndexC[3] +"/ iResolution."+permutationIndexC[4]+"+"+permutationIndexC[5]+"); pos2."+permutationIndexC[5]+"*=iResolution."+permutationIndexC[4]+"/iResolution."+permutationIndexC[3]+"; vec4 t3 = texture(iChannel0, vec2(length(position)/"+permutationIndexB[3]+","+permutationIndexB[2]+") ); float pulse ="+ permutationIndexB[1]+"+sampleMusicA()*"+permutationIndexB[5]+"; vec3 invFract = color(fractal(pos2,vec2("+permutationIndexB[3]+"+sin(iTime/"+permutationIndexB[6]+"+"+permutationIndexB[5])+"+/"+permutationIndexB[8]"+,pulse*+"+permutationIndexB[7]+"))); vec3 fract4 = color(fractal(position/"+permutationIndexB[3]+",vec2("+permutationIndexB[2]+"+cos(iTime/"+permutationIndexB[1]"+"+permutationIndexB[2])/permutationIndexB[5]+",pulse*"+permutationIndexB[5]+"))); vec3 c = color(fractal(position,vec2("+permutationIndexB[3]+"+sin(iTime/"+permutationIndexB[2]+")/"+permutationIndexB[1]",pulse))); t3=abs(vec4("+permutationIndexB[3]+","+permutationIndexB[2]+","+permutationIndexB[1]+","+permutationIndexB[0])-t3)*permutationIndexB[3]"; vec4 fract01 =  vec4( c , "+permutationIndexB[3]+" ); vec4 salida; salida = fract01 / t3 + fract01 * t3 + vec4(invFract,"+permutationIndexB[6]+") + vec4(fract4,"+permutationIndexB[7]+"); fragColor = salida;}""];"

let iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];


function hashingProceduralScriptGeneration() {

    for (let i1 = 0; i1 < 10000; i1++) {
    iterationArray[0] = i1; var iterationArrayIt = i1 % myValues2.length; if (iterationArrayIt == 0) iterationArray[1] += 1;
    range++; let myGLSLScriptName = ["glsl1" + range + ".frag"];

    console.log(myGLSLScriptName, "utf-8");

    myCode = ["const int iters = " + permutationIndexA[0] ; + " +  int fractal(vec2 p, vec2 point) { vec2 so =" + "(" + -permutationIndexB[0] +  "+" + permutationIndexB[1] + "* point) * " + permutationIndexB[2] + "; vec2 seed = vec2(" + permutationIndexB[3] +  'so.' + permutationIndexC[0]+"," +permutationIndexC[1] + "so."+permutationIndexC[2]"); for (int i = 0; i < iters; i++) {if (length(p) >" + permutationIndexB[4]") {return i;} vec2 r = p; p = vec2(p."+permutationIndexC[3] + "* p."+permutationIndexC[4]" - p."+permutationIndexC[5] "* p."+permutationIndexC[6]","+ permutationIndexB[5] +"* p."+permutationIndexC[7] "* p."+permutationIndexC[8]"); p = vec2(p."+permutationIndexC[7] "* r."+permutationIndexC[6] "- p."+permutationIndexC[5] "* r."+permutationIndexC[4]" + seed.+"+permutationIndexC[3]+", r."+permutationIndexC[2]+" * p."+permutationIndexC[1] "+ p."+permutationIndexC[0] "* r."+permutationIndexC[1] "+ seed."+permutationIndexC[5]");} return 0;} vec3 color(int i) {float f = float(i)/float(iters) * "+permutationIndexB[3]+"; f=f*f*"permutationIndexB[7]+"; return vec3((sin(f*"+permutationIndexB[3]+")), (sin(f*"+permutationIndexB[6]+")), abs(sin(f*"+permutationIndexB[2]+")));} float sampleMusicA() {return "+permutationIndexB[3]+" * (texture( iChannel0, vec2("+ permutationIndexB[6]", "+permutationIndexB[7]+" ) )."+permutationIndexC[1]+" + texture( iChannel0, vec2("+ permutationIndexB[1]+", " + permutationIndexB[1] + ") )."+permutationIndexC[2]+");} void mainImage( out vec4 fragColor, in vec2 fragCoord ) {vec2 uv = fragCoord."+permutationIndexC[2]+"+"+permutationIndexC[3] +"/ iResolution."+permutationIndexC[2]+"++"+"+permutationIndexC[3]"+; "vec2 mouse = vec2(iMouse."+permutationIndexC[3]+"/iResolution."+permutationIndexC[4]+",iMouse."+permutationIndexC[5]+"/iResolution."+permutationIndexC[6]+"); vec2 position = "+permutationIndexB[2] +"* (-"+permutationIndexB[4] + "+ fragCoord."+permutationIndexC[3]+"+"+permutationIndexC[4] +"/ iResolution."+permutationIndexC[2]+"+"+permutationIndexC[1]+" ); position."+permutationIndexC[4]+ "*= iResolution."+permutationIndexC[5]+"/iResolution."+permutationIndexC[6]+"; vec2 iFC = vec2(iResolution."+permutationIndexC[8]+"-fragCoord."+permutationIndexC[2]+",iResolution."+permutationIndexC[1]"-fragCoord."+permutationIndexC[2]+"); vec2 pos2 = "+permutationIndexB[3] +"* (-"+permutationIndexB[7] "+"+ "iFC."+permutationIndexC[2]+"+"+permutationIndexC[3] +"/ iResolution."+permutationIndexC[4]+"+"+permutationIndexC[5]+"); pos2."+permutationIndexC[5]+"*=iResolution."+permutationIndexC[4]+"/iResolution."+permutationIndexC[3]+"; vec4 t3 = texture(iChannel0, vec2(length(position)/"+permutationIndexB[3]+","+permutationIndexB[2]+") ); float pulse ="+ permutationIndexB[1]+"+sampleMusicA()*"+permutationIndexB[5]+"; vec3 invFract = color(fractal(pos2,vec2("+permutationIndexB[3]+"+sin(iTime/"+permutationIndexB[6]+"+"+permutationIndexB[5])+"+/"+permutationIndexB[8]"+,pulse*+"+permutationIndexB[7]+"))); vec3 fract4 = color(fractal(position/"+permutationIndexB[3]+",vec2("+permutationIndexB[2]+"+cos(iTime/"+permutationIndexB[1]"+"+permutationIndexB[2])/permutationIndexB[5]+",pulse*"+permutationIndexB[5]+"))); vec3 c = color(fractal(position,vec2("+permutationIndexB[3]+"+sin(iTime/"+permutationIndexB[2]+")/"+permutationIndexB[1]",pulse))); t3=abs(vec4("+permutationIndexB[3]+","+permutationIndexB[2]+","+permutationIndexB[1]+","+permutationIndexB[0])-t3)*permutationIndexB[3]"; vec4 fract01 =  vec4( c , "+permutationIndexB[3]+" ); vec4 salida; salida = fract01 / t3 + fract01 * t3 + vec4(invFract,"+permutationIndexB[6]+") + vec4(fract4,"+permutationIndexB[7]+"); fragColor = salida;}""];"

        fs.writeFileSync("./GLSL1/" + myGLSLScriptName, textBlock);

        for(let a1=0; a1<12; a1++) {
            iterationNetwork[a1]=Math.floor((Math.random()*a1)+1); 
            permutationIndexA[a1] = myValues1[iterationNetwork[a1]] % myValues1.length;
            permutationIndexB[a1] = myValues2[iterationNetwork[a1]] % myValues2.length;
           permutationIndexC[a1] = XY[iterationNetwork[a1]] % XY.length;
  

    }

    return 0;

}

hashingProceduralScriptGeneration();
