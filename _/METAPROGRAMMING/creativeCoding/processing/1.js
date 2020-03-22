let fs = require('fs');
	
const screenResolution = [50, 150, 250, 500, 1024, 1280];

let backgroundColor1 = Math.random() % 255;
let backgroundColor2 = Math.random() % 255;
let backgroundColor3 = Math.random() % 255;

let backgroundColor = [backgroundColor1, backgroundColor2, backgroundColor3];

let screenWidth = [screenResolution[Math.random() % 255], 
			screenResolution[Math.random() % 255], 
			screenResolution[Math.random() % 255]];

let range = 0; let textBlock = ["void setup() {size(" + screenResolution[Math.random() % screenResolution.length]  + " , " + screenResolution[Math.random() % screenResolution.length()] + ");}" + "void draw() {background(" + backgroundColor[0] + ", "  + backgroundColor[1] + ", "  +  backgroundColor[2] + ");}"];

function hashingProceduralScriptGeneration() {

    for (let i1 = 0; i1 < 9999; i1++) {

        range++; let basicMetaProgrammingProcessingSketch = ["basicMetaProgrammingProcessingSketch" + range + ".js"];

        console.log(basicMetaProgrammingProcessingSketch, "utf-8");

        textBlock = ["void setup() {size(" + screenResolution[Math.random() % screenResolution.length]  + " , " + screenResolution[Math.random() % screenResolution.length()] + ");}" + "void draw() {background(" + backgroundColor[0] + ", "  + backgroundColor[1] + ", " + backgroundColor[2] + ");"];

	const screenResolution = [50, 150, 250, 500, 1024, 1280];

	let backgroundColor1 = Math.random() % 255;
	let backgroundColor2 = Math.random() % 255;
	let backgroundColor3 = Math.random() % 255;

	let backgroundColor = [backgroundColor1, backgroundColor2, backgroundColo3];

	let screenWidth = [screenResolution[Math.random() % 255], 
				screenResolution[Math.random() % 255]];

        fs.writeFileSync("./processing1/" + basicMetaProgrammingProcessingSketch + textBlock);

    }

    return 0;

}

hashingProceduralScriptGeneration();
