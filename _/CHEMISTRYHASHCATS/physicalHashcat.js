// two nights without sleeping with at least 6-12 mid range epiletic attacks driven by ultrasounds at high level pressure located all around the places i was standing in in my house

const physicalPrinciples = ["A", "a", "B", "C", "c", "D", "d", "dA", "dV", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "j", "J", "K", "k", "L", "l", "M", "m", "N", "n", "P", "p", "Q", "q", "R", "r", "S", "s", "T", "t", "U", "u", "V", "v", "W", "w", "x", "Z", "nabla dot", "nabla cross", "nabla", "delta", "der", "d'alembert perator"];
let physicalPrinciplesPermutation = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

function permutatePhysicalPrinciplesFormula1() {
	for (var i1 = 0; i1 < physicalPrinciples.length; i1++) {
        i2 = physicalPrinciples.length - i1;
		console.log(physicalPrinciples[i1] + physicalPrinciples[i2]);
	}
	return 0;
}

permutatePhysicalPrinciplesFormula2();

function permutatePhysicalPrinciplesFormula2() {
	for (let i1 = 0; i1 < physicalPrinciples.length; i1++) {
        i2 = physicalPrinciples.length - i1; 
  
            physicalPrinciplesPermutation[i3] = Math.floor(Math.random() % physicalPrinciplesPermutation[i3] + 1);
            console.log("\n " + physicalPrinciplesPermutation[0]);
            console.log(
                physicalPrinciples[i1]
                + physicalPrinciples[i2]
                + physicalPrinciples[physicalPrinciples.length-i1]
                + physicalPrinciples[physicalPrinciples.length-i2]
                + physicalPrinciples[physicalPrinciples.length-i1]
                + physicalPrinciples[physicalPrinciples.length-i2]
                + physicalPrinciples[physicalPrinciples.length-i1]
                + physicalPrinciples[physicalPrinciples.length-i2]
                );
            
        }
        return 0;
    }

permutatePhysicalPrinciplesFormula2();
