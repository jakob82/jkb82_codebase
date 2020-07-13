"""
let fs = require('fs');

let array = [145, 467, 523, 333, 322, 128, 124];

function hashingProceduralScriptGeneration() {

    for (let i = 0; i < 2000; i++) {
        let supercolliderScriptName = ["supercollider" + i + ".scd"];
        console.log(supercolliderScriptName, "utf-8");

        textBlock = "\n\n {SinOsc.ar([" + i % 11 % array.length +", " + array.length - i % 7 % array.length + 7 + "]" + " * rrand(0.9, 1.1), mul: SinOsc.kr([0.0146, 0.0235] * rrand(0.9, 1.1))) * 0.03}.scope"
        + "\n\n {Saw.ar([" + i % 5 % array.length +", " + array.length - i % 8 % array.length + 8 + "]" + " * rrand(0.9, 1.1), mul: SinOsc.kr([0.0146, 0.0235] * rrand(0.9, 1.1))) * 0.03}.scope"
        + "\n\n {Pulse.ar([" + i % 13 % array.length +", " + array.length - i % 21 % array.length + 21 + "]" + " * rrand(0.9, 1.1), mul: SinOsc.kr([0.0146, 0.0235] * rrand(0.9, 1.1))) * 0.03}.scope"
        + "\n)"
        ;

        fs.writeFileSync("./SC3" + supercolliderScriptName, textBlock);
    }
}

hashingProceduralScriptGeneration();
"""

from array import *

array = [145, 467, 523, 333, 322, 128, 124];

for i in range(1, 2000):
    file = open(“supercollider%d.scd” % i,”w”)
    file.write("\n\n {SinOsc.ar([" + i % 11 % len(array) +", " + len(array) - i % 7 % len(array) + 7 + "]" + " * rrand(0.9, 1.1), mul: SinOsc.kr([0.0146, 0.0235] * rrand(0.9, 1.1))) * 0.03}.scope"
        + "\n\n {Saw.ar([" + i % 5 % len(array) +", " + len(array) - i % 8 % len(array) + 8 + "]" + " * rrand(0.9, 1.1), mul: SinOsc.kr([0.0146, 0.0235] * rrand(0.9, 1.1))) * 0.03}.scope"
        + "\n\n {Pulse.ar([" + i % 13 % len(array) +", " + len(array) - i % 21 % len(array) + 21 + "]" + " * rrand(0.9, 1.1), mul: SinOsc.kr([0.0146, 0.0235] * rrand(0.9, 1.1))) * 0.03}.scope"
        + "\n)") 
