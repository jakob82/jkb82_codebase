let fs = require('fs');

const myValues1 = [32, 33, 55, 90, 99, 150, 322, 333, 505, 666, 606, 707, 808, 909];
const myValues2 = [3.1456, 3.1456 * 0.5, 1, 2, 3, 5, 7, 8, 11 * 0.1, 13 * 0.1, 21 * 0.1];

let iterationArray = [0, 0]; let range = 0;

let permutationIndexA = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let permutationIndexB = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

let textBlock = ["{var sourceSignal1, sourceSignal2, ampModulationSignal1, ampModulationSignal2; ampModulationSignal1 = SinOsc.kr(SinOsc.kr(" + permutationIndexB[0]  + " * " + permutationIndexB[1] + ")); ampModulationSignal2 = SinOsc.kr(SinOsc.kr(" + permutationIndexB[2] + " * " + permutationIndexB[3] + ")); sourceSignal1 = Saw.ar(" + permutationIndexA[4] + " * " + permutationIndexB[5] + " * " + permutationIndexB[6] + ", mul: SinOsc.kr(ampModulationSignal1)); sourceSignal2 = Saw.ar(" + permutationIndexA[7] + " * " + permutationIndexB[9] + " * " + permutationIndexB[10] + " * " + permutationIndexB[11] + ", mul: SinOsc.kr(ampModulationSignal2)); Pan2.ar(sourceSignal1+sourceSignal2, 0, " + permutationIndexB[12] + ");}.scope;"];

let iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

function hashingProceduralScriptGeneration() {

    for (let i1 = 0; i1 < 10000; i1++) {

        // let metaiterator = 0; if (iterationArray[1] == myValues2.length) { return 0; }
        iterationArray[0] = i1; var iterationArrayIt = i1 % myValues2.length; if (iterationArrayIt == 0) iterationArray[1] += 1;
        range++; let mySupercolliderScriptName = ["supercolliderScriptTest" + range + ".scd"];

        console.log(mySupercolliderScriptName, "utf-8");

        textBlock = ["{var sourceSignal1, sourceSignal2, ampModulationSignal1, ampModulationSignal2; ampModulationSignal1 = SinOsc.kr(SinOsc.kr(" + permutationIndexB[0]  + " * " + permutationIndexB[1] + ")); ampModulationSignal2 = SinOsc.kr(SinOsc.kr(" + permutationIndexB[2] + " * " + permutationIndexB[3] + ")); sourceSignal1 = Saw.ar(" + permutationIndexA[4] + " * " + permutationIndexB[5] + " * " + permutationIndexB[6] + ", mul: SinOsc.kr(ampModulationSignal1)); sourceSignal2 = Saw.ar(" + permutationIndexA[7] + " * " + permutationIndexB[9] + " * " + permutationIndexB[10] + " * " + permutationIndexB[11] + ", mul: SinOsc.kr(ampModulationSignal2)); Pan2.ar(sourceSignal1+sourceSignal2, 0, " + permutationIndexB[12] + ");}.scope;"];
        console.log(permutationIndexA[0], permutationIndexA[1], permutationIndexA[2], permutationIndexA[3]);

        fs.writeFileSync("./supercollider1/" + mySupercolliderScriptName, textBlock);

        for(let a1=0; a1<12; a1++) {
            iterationNetwork[a1]=Math.floor((Math.random()*a1)+1); 
            permutationIndexA[a1] = myValues1[iterationNetwork[a1]] % myValues1.length;
            permutationIndexB[a1] = myValues2[iterationNetwork[a1]] % myValues2.length;
            // console.log(permutationIndexA[a1], permutationIndexB[a1]);
        }

        /*
            {
                var sourceSignal1, sourceSignal2, ampModulationSignal1, ampModulationSignal2; 
                ampModulationSignal1 = SinOsc.kr(SinOsc.kr(0.333*3.14)); 
                ampModulationSignal2 = SinOsc.kr(SinOsc.kr(0.505*3.14)); 
                sourceSignal1 = Saw.ar(30*0.5*3.14, mul: SinOsc.kr(ampModulationSignal1)); 
                sourceSignal2 = Saw.ar(31*0.5*3.14*3.33, mul: SinOsc.kr(ampModulationSignal2));
                Pan2.ar(sourceSignal1+sourceSignal2, 0, 1);
            }.scope;
        */

    }

    return 0;

}

hashingProceduralScriptGeneration();