const toolsAudio = ["ableton", "cubase", "maxforlive", "supercollider"];
const toolsVideo = ["processing", "adobe premiere + adobe after effects", "cinema 4d"];
const toolsProgramming = ["javascript", "bash", "python"];

function permutateChemicalFormula7() {
	for (let i = 0; i < 48; i++) {
		console.log(
			+ "\n" + toolsAudio[i % 11 % toolsAudio.length]
			+ "\t" + toolsVideo[i % 7 % toolsVideo.length]
			+ "\t" + toolsProgramming[i % 13 % toolsProgramming.length]);
	}
	return 0;
}

permutateChemicalFormula7();