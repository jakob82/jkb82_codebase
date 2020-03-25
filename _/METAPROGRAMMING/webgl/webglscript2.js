let fs = require('fs');
const myValues1 = [32, 33, 55, 90, 99, 150, 322, 333, 505, 666, 606, 707, 808, 909];
const myValues2 = [3.1456, 3.1456 * 0.5, 1, 2, 3, 5, 7, 8, 11 * 0.1, 13 * 0.1, 21 * 0.1];
let iterationArray = [0, 0]; let range = 0;
let permutationIndexA = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let permutationIndexB = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let textBlock = ["<!DOCTYPE html><html ><head></meta>title>Canvas Particle System Experiment</title><script src=" + "https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" + "type=" + "text/javascript"+"></script><link rel=" + "stylesheet" + "href=" + "https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" + "<link rel=" + "stylesheet" + "href=" + "css/style.css" + "></head><body><canvas id=" + "c" + ">Upgrade yo' browsa!</canvas><script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src=" + "js/index.js" + "></script><script>"];
let iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

function hashingProceduralScriptGeneration() {
    for (let i1 = 0; i1 < 10000; i1++) {
        iterationArray[0] = i1; var iterationArrayIt = i1 % myValues2.length; if (iterationArrayIt == 0) iterationArray[1] += 1;
        range++; let htmlScriptName = ["htmlScript" + range + ".html"];
        console.log(htmlScriptName, "utf-8");
        textBlock = ["<html><head></head></html>body><style>background-color: rgba(0);</style></body></html>"];
       console.log(permutationIndexA[0], permutationIndexA[1], permutationIndexA[2], permutationIndexA[3]);
        fs.writeFileSync("./htmlScript/" + htmlScriptName, textBlock);
        for(let a1=0; a1<12; a1++) {
            iterationNetwork[a1]=Math.floor((Math.random()*a1)+1); 
            permutationIndexA[a1] = myValues1[iterationNetwork[a1]] % myValues1.length;
            permutationIndexB[a1] = myValues2[iterationNetwork[a1]] % myValues2.length;
        }
    }
    return 0;
}

hashingProceduralScriptGeneration();

