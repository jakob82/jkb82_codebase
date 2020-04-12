const projects = ["projects1", "projects2", "projects3", "projects4"];

let permutationIndex = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

let miscellaneousIndex;

function permutateChemicalFormula7() {

	for (let i1 = 0; i1 < 10000; i1++) {

		for (let a1 = 0; a1 < 20; a1++) {
			iterationNetwork[a1] = Math.floor((Math.random() * a1) + 1);
			permutationIndex[a1] = iterationNetwork[iterationNetwork[a1]] % 20;
			// console.log(permutationIndexA[a1], permutationIndexB[a1]);
		}

		console.log(
			+ "\n" + projects[permutationIndex[0] % projects.length]
			+ "\t" + projectsrmutationIndex[1] % projects.length]
			+ "\t" + projects[permutationIndex[2] % projects.length]
			+ "\t" + projects[permutationIndex[3] % projects.length]);

	}

	return 0;

}

permutateChemicalFormula7();
