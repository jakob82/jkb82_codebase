const toolsAudio = ["ableton", "maxmsp", "supercollider", "puredata"];
const toolsVideo = ["processing", "cinema 4d", "quartz composer", "after effects"];
const toolsProgramming = ["shell scripting", "javascript", "react.js", "wordpress"];
const constantFieldsOfCreativePractice = ["digital media arts", "webdevelopment", "sounddesign"];
const projects = ["project1", "project2"];

let permutationIndex = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

let miscellaneousIndex;

function permutateChemicalFormula7() {

	for (let i1 = 0; i1 < 10000; i1++) {

		for (let a1 = 0; a1 < 20; a1++) {
			iterationNetwork[a1] = Math.floor((Math.random() * a1) + 1);
			permutationIndex[a1] = iterationNetwork[iterationNetwork[a1]] % 20;
			// console.log(permutationIndexA[a1], permutationIndexB[a1]);
		}

		console.log(
			+ "\n" + toolsAudio[permutationIndex[0] % toolsAudio.length]
			+ "\t" + toolsVideo[permutationIndex[1] % toolsVideo.length]
			+ "\t" + toolsProgramming[permutationIndex[2] % toolsProgramming.length]
			+ "\t" + constantFieldsOfCreativePractice[permutationIndex[3] % toolsAudio.length]
			+ "\t" + projects[permutationIndex[4] % toolsAudio.length]);

	}

	return 0;

}

permutateChemicalFormula7();