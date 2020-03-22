let chemicalElements = ["C", "O", "H", "Li", "Be", "Na", "Mg", "K", "Ca", "Rb", "Sr", "Cs", 
"Ba", "Fr", "Ra", "Sc", "Ti", "Y", "Zr", "Hf", "Rf", "V", "Nb", "Ta", "Db", "Cr", "Mo", "W", 
"Sg", "Mn", "Tc", "Re", "Bh", "Fe", "Ru", "Os", "Hs", "Co", "Rh", "Ir", "Mt", "Ni", "Pd", "Pt", 
"Ds", "Cu", "Ag", "Au", "Rg", "Zn", "Cd", "Hg", "Cn", "B", "Al", "Ga", "In", "Ti", "Nh", "C", 
"Si", "Ge", "Sn", "Pb", "Fl", "N", "P", "As", "Sb", "Bi", "Mc", "S", "Se", "Te", "Po", "Lv", 
"F", "Cl", "Br", "I", "At", "As", "Ts", "He", "Ne", "Ar", "Kr", "Xe", "Rn", "Og", "La", "Ce", 
"Ac", "Th", "Pr", "Pa", "Nd", "U", "Pm", "Np", "Sm", "Pu", "Eu", "Am", "Gd", "Cm", "Tb", "Bk", 
"Dy", "Cf", "Ho", "Es", "Er", "Fm", "Tm", "Md", "Yn", "No", "Lu", "Lr"];

let range1 = 0; let range2 = 0; let range3 = 0; let range4 = 0;

const chemicalElementsLength = Math.pow(Math.pow(
		Math.pow(chemicalElements.length,chemicalElements.length), 
			150), 8);

function permutateChemicalFormula8() {

	for (let i=0; i<chemicalElements.length;i++) {

		let range = [i % 101, i % 202 % 150, i % 505 % 150, i % 707 % 150, i % 808, i % 1011 % 150, i % 2022 % 150, i % 3033 % 150];
		
		let chemicalTarget = [chemicalElements[i % 101 % chemicalElements.length], chemicalElements[i % 303 % chemicalElements.length],
								chemicalElements[i % 505 % chemicalElements.length], chemicalElements[i % 707 % chemicalElements.length],
								chemicalElements[i % 909 % chemicalElements.length], chemicalElements[i % 1011 % chemicalElements.length],
								chemicalElements[i % 2022 % chemicalElements.length], chemicalElements[i % 3033 % chemicalElements.length]]; 

		let array1=[chemicalTarget[0] + range[1]]; let array2=[array1 + chemicalTarget[1] + range[1]];
		let array3=[array2 + chemicalTarget[2] + range[2]]; let array4=[array3 + chemicalTarget[3] + range[3]];
		let array5=[array4 + chemicalTarget[4] + range[4]]; let array6=[array5 + chemicalTarget[5] + range[5]];
		let array7=[array6 + chemicalTarget[6] + range[6]]; let array8=[array7 + chemicalTarget[7] + range[7]];
		
		console.log(array1); console.log(array2); console.log(array3); console.log(array4);
		console.log(array5); console.log(array6); console.log(array7); console.log(array8);
		
	}

	return 0;

}

permutateChemicalFormula8();

let points = ([[4, 5, 1, 3], [13, 27, 18, 26], [32, 35, 37, 39], [1000, 1001, 857, 1]]);
for (let i=0; i<points.length;i++){
    for(let j=0; j<points[i].length;j++){
        .........
    }
}
