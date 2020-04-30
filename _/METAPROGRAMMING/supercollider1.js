let fs = require('fs');

let textBlock = "\n\n {SinOsc.ar([322, 333] * rrand(0.9, 1.1), mul: SinOsc.kr([0.0146, 0.0235] * rrand(0.9, 1.1))) * 0.03}.scope";
+ "\n {Saw.ar([322, 333] * rrand(0.9, 1.1), mul: SinOsc.kr([0.0146, 0.0235] * rrand(0.9, 1.1))) * 0.03}.scope";
+ "\n {Pulse.ar([322, 333] * rrand(0.9, 1.1), SinOsc.kr([0.1, 0.2]), mul: SinOsc.kr([0.0146, 0.0235] * rrand(0.9, 1.1))) * 0.03}.scope;)";


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
