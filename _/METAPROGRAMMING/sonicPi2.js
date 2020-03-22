let fs = require('fs');

const _arrayStock1 = [
    "[0, 2, 4, 5, 7, 9, 11]",
    "[0, 2, 3, 5, 7, 9, 10]",
    "[0, 2, 4, 6, 8]",
    "[0, 2, 4, 5, 11]",
    "[0, 2, 3, 5, 7, 9, 10]",
    "[0, 1, 3, 5, 7, 8, 10]",
    "[0, 2, 4, 6, 7, 9, 11]",
];

const _arrayStock2 = [
    "[0, 12]",
    "[0, 24]",
    "[0, 36]",
    "[0, -12]",
    "[0, -24]",
    "[0, -36]",
    "[0, -36, -24, -12, 0, 12, 24]",
    "[0,, -36, 12]"
]

const _arrayStock3 = ["0.125", "0.25", "0.5", "0.75", "1.25", "1.5"];

const _arrayStock4 = ["60", "65", "70", "75", "80", "55", "50", "45", "40"];

const _arrayStock5 = [
    ["use_synth [:tb303, :tech_saws, :tri, :beep].choose"],
    ["use_synth [:pulse, :saw, :sine].choose"],
    ["use_synth [:prophet, :pluck, :piano].choose"],
    ["use_synth [:dtri, :dpulse, :dsaw].choose"],
    ["use_synth [:beep, :blade, :chipbass, :chiplead].choose"]
];

let _textBlock;


function hashingProceduralScriptGeneration() {

    for (let i1 = 0; i1 < 10000; i1++) {
        
        let mySonicPiScriptName = ["sonicPiTest" + i1 + ".rb"];
        
        console.log(mySonicPiScriptName, "utf-8");
        
        let _textBlock ="use_bpm 128"
            + "\n\n"
            + "live_loop :myLoop do"
                +   "\n\t " + _arrayStock5[i1 % 11 % _arrayStock5.length]
                +   "\n\t play " + _arrayStock1[i1 % 11 % _arrayStock1.length] + ".choose + " + _arrayStock4[i1 % 21 % _arrayStock4.length] + " + " + _arrayStock2[i1 % 33 % _arrayStock2.length] + ".choose"
                +   "\n\t sleep(" + _arrayStock3[i1 % 7 % _arrayStock3.length] + ")"
            + "\n end";

        fs.writeFileSync("./sonicPiTest2/" + mySonicPiScriptName, _textBlock);

    }
    
    return 0;
    
}

hashingProceduralScriptGeneration();