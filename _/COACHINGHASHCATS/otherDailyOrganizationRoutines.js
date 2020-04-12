// general routines towards organizing my daily work habits

const spiritualRoutines = ["medidating", "silence+listening", "silence", "listening", "auto-reiki", "self made script based tarot readings"];
const bodyWorkoutRoutines = ["abs", "pushups", "stretching", "pullups", "hangups", "cardio", "other exercises"];
const craftRoutinesMusic = ["laptop practice", "dance music", "electroacoustic improv", "contemporary instrumental", "electroacousitc music", "ambient music", "crossover"];
const craftRoutinesProgramming = ["computer science solfeggio", "creative coding solfeggio", ""];
const craftRoutinesDesign = ["manual drawing", "3d+2d animation studies", "UI/UX", "photography related stuff"];
const readingsRoutines = ["novel", "poetry", "scientifc paper or thesis"];
const socialRoutines = ["likes + comments on facebook", "3 follows + wishlist on bandcamp", "stars + follow on github"];

let permutationIndex = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

let miscellaneousIndex;

function miscellaneousRoutinesConcatenation() {

	for (let i1 = 0; i1 < 10000; i1++) {

		for (let a1 = 0; a1 < 20; a1++) {
			iterationNetwork[a1] = Math.floor((Math.random() * a1) + 1);
			permutationIndex[a1] = iterationNetwork[iterationNetwork[a1]] % 20;
			// console.log(permutationIndexA[a1], permutationIndexB[a1]);
		}

		var miscellaneousIndex = [spiritualRoutines[permutationIndex[0] % spiritualRoutines.length], bodyWorkoutRoutines[permutationIndex[1] % bodyWorkoutRoutines.length], craftRoutinesMusic[permutationIndex[2] % craftRoutinesMusic.length], craftRoutinesProgramming[permutationIndex[3] % craftRoutinesProgramming.length], craftRoutinesDesign[permutationIndex[4] % craftRoutinesDesign.length], readingsRoutines[permutationIndex[5] % readingsRoutines.length], socialRoutines[permutationIndex[6] % socialRoutines.length]];
		console.log("\n " + miscellaneousIndex);

	}

	return 0;

}

miscellaneousRoutinesConcatenation();
