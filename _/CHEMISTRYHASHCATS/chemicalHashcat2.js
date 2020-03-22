let antifolates = ["antifolates", "aminopterin", "methotrexate", "permetrexed", "pralatrexate", "raltitrexed"];

function permutateChemicalFormula1() {
	for (let i1 = 0; i1 < antifolates.length; i1++) console.log(antifolates[i1]);
	return 0;
}


permutateChemicalFormula1();

function permutateChemicalFormula2() {
	for (let i1 = 0; i1 < antifolates.length; i1++) {
		for (let i2 = 0; i2 < antifolates.length; i2++) {
			console.log(antifolates[i1] + " " +  antifolates[i2]);
		}
	}
	return 0;
}


permutateChemicalFormula2();

function permutateChemicalFormula3() {
	for (let i1 = 0; i1 < antifolates.length; i1++) {
		for (let i2 = 0; i2 < antifolates.length; i2++) {
			for (let i3 = 0; i3 < antifolates.length; i3++) {
				console.log(antifolates[i1] + " " +  antifolates[i2] + " " +  antifolates[i3]);
			}
		}
	}
	return 0;
}

permutateChemicalFormula3();

function permutateChemicalFormula4() {
	for (let i1 = 0; i1 < antifolates.length; i1++) {
		for (let i2 = 0; i2 < antifolates.length; i2++) {
			for (let i3 = 0; i3 < antifolates.length; i3++) {
				for (let i4 = 0; i4 < antifolates.length; i4++) {
					console.log(antifolates[i1] + " " + antifolates[i2] + " " +  antifolates[i3] + " " +  antifolates[i4]);
					}
				}
			}
		}
	
	return 0;
}

permutateChemicalFormula4();

