let fs = require('fs');

const arrayStock1 = [
    "[0, 2, 4, 5, 7, 9, 11]",
    "[0, 2, 3, 5, 7, 9, 10]",
    "[0, 2, 4, 6, 8]",
    "[0, 2, 4, 5, 11]",
    "[0, 2, 3, 5, 7, 9, 10]",
    "[0, 1, 3, 5, 7, 8, 10]",
    "[0, 2, 4, 6, 7, 9, 11]",
];

const arrayStock2 = [
    "[0, 12]",
    "[0, 24]",
    "[0, 36]",
    "[0, -12]",
    "[0, -24]",
    "[0, -36]",
    "[0, -36, -24, -12, 0, 12, 24]",
    "[0,, -36, 12]"
]

const arrayStock3 = ["0.125", "0.25", "0.5", "0.75", "1.25", "1.5"];

const arrayStock4 = ["60", "65", "70", "75", "80", "55", "50", "45", "40"];

let range=0;

let textBlock;

function hashingProceduralScriptGeneration() {

    for (let i1 = 0; i1 < 10000; i1++) {
        
        range++; let mySonicPiScriptName = ["sonicPiTest" + range + ".rb"];
        
        console.log(mySonicPiScriptName, "utf-8");
        
        let textBlock = "live_loop :beep do play "
        + arrayStock1[i1 % arrayStock1.length] + ".choose + "
        + arrayStock4[i1 % arrayStock4.length] + " + "
        + arrayStock2[i1 % arrayStock2.length]
        + ".choose sleep(" + arrayStock3[i1 % arrayStock3.length]
        + ") end";

        fs.writeFileSync("./sonicPiTest/" + mySonicPiScriptName, textBlock);

    }
    
    return 0;
    
}

hashingProceduralScriptGeneration();