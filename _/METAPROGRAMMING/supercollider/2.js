/*
a program that creates three signals and recursively iterates random frequencies on top of each other
*/

let fs = require('fs');

const carrierSignal = [
			["Pulse.ar([30, 31.2], mul: 0.3)"], 
			["Pulse.ar([99, 99.1], mul: 0.3)"], 
			["Pulse.ar([99, 99.1]*3.14, mul: 0.3)"],
			["Pulse.ar([99, 99.1]*3.14*2, mul: 0.3)"], 
			["Pulse.ar([99, 99.1]*3.14*4, mul: 0.3)"],
			["Pulse.ar([99, 99.1]*3.14*4, mul: 0.3)"]
			];

const modulatingSignal = [
				["SinOsc.ar([""SinOsc.ar(0.01, mul: [0.3, 0.32])"", ""SinOsc.ar(0.009, mul: [0.3, 0.32])""], mul: [0.3, 0.32"),
                                ["SinOsc.ar([""SinOsc.ar(0.1, mul: [0.3, 0.32])"", ""SinOsc.ar(0.1, mul: [0.3, 0.32])""], mul: [0.3, 0.32])"],
				["SinOsc.ar([""SinOsc.ar(1, mul: [0.3, 0.32])"", ""SinOsc.ar(0.9, mul: [0.3, 0.32])""], mul: [0.3, 0.32])"],
                                ["SinOsc.ar([""SinOsc.ar(3.14, mul: [0.3, 0.32])"", ""SinOsc.ar(2.9, mul: [0.3, 0.32])""], mul: [0.3, 0.32])"],
                                ["SinOsc.ar([""SinOsc.ar(3.14, mul: [0.3, 0.32])"", ""SinOsc.ar(2.9, mul: [0.3, 0.32])""], mul: [0.3, 0.32])"],
                                ["SinOsc.ar([""SinOsc.ar(3.14, mul: [0.3, 0.32])"", ""SinOsc.ar(2.9, mul: [0.3, 0.32])""], mul: [0.3, 0.32])"]
				];

const valuesMacroScale = [33, 55, 66, 99, 150, 250, 322, 333, 505, 909, 5050];
const valuesMicroScale = [0.01, 0.1, 1, 3.14, 5.05, 6.66, 9.99];

const multipliers = [1, 2, 4, 8, 12];

function hashingProceduralScript() {

    for (let i1 = 0; i1 < 10000; i1++) {

        iterationArray[0] = i1; var iterationArrayIt = i1 % myValues2.length; if (iterationArrayIt == 0) iterationArray[1] += 1;
        range++; let mySupercolliderScriptName = ["supercolliderScriptTest" + range + ".scd"];

	console.log(mySupercolliderScriptName, "utf-8");

        fs.writeFileSync("./supercollider2/" + mySupercolliderScriptName, textBlock);

	for(let i=0; i<; i++)

		{

		}

	}

        /*
            {

		var signalA = Pulse.ar([30, 31.2], mul: 0.3);

                signalA = signalC + Pulse.ar([30, 31.2]*3.14, mul: 0.3);
                signalA = signalC + Pulse.ar([30, 31.2]*3.14*2, mul: 0.3);
                signalA = signalC + Pulse.ar([30, 31.2]*3.14*4, mul: 0.3);
                signalA = signalC + Pulse.ar([30, 31.2]*3.14*8, mul: 0.3);
                signalA = signalC + Pulse.ar([30, 31.2]*3.14*16, mul: 0.3);

                signalA = signalA * SinOsc.ar([SinOsc.ar(0.01, mul: [0.3, 0.32]), SinOsc.ar(0.009, mul: [0.3, 0.32])], mul: [0.3, 0.32]);

                signalB = signalC + Saw.ar([30, 31.2]*3.14, mul: 0.3);
                signalB = signalC + Saw.ar([30, 31.2]*3.14*2, mul: 0.3);
                signalB = signalC + Saw.ar([30, 31.2]*3.14*4, mul: 0.3);
                signalB = signalC + Saw.ar([30, 31.2]*3.14*8, mul: 0.3);
                signalB = signalC + Saw.ar([30, 31.2]*3.14*16, mul: 0.3);

		signalB = signalA * SinOsc.ar([SinOsc.ar(0.01, mul: [0.3, 0.32]), SinOsc.ar(0.009, mul: [0.3, 0.32])], mul: [0.3, 0.32]);

		var outSignal = [signalA + signalB] * 0.06;

                Pan2.ar(outSignal, 0, 1);

            }.scope;
        */


	return 0;
}

hashingProceduralScript();
