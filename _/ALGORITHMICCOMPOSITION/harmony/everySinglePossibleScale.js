function printScales() {
	for(let i = 0; i<4096; i++)

	{console.log(parseInt(i, 2).toString(12).toUpperCase());}

	// *****************************************************//

	console.log("\n CHOOSE AN OPTION");
	console.log("\n   1 - INCLUDE FILTERS IN RELATION TO THE ROOT PITCH");
        console.log("\n   2 - INCLUDE SEQUENTIAL STEP FILTERS");
	console.log("\n   3 - INCLUDE BOTH");

	console.log("\n\n SELECT AN INTERVAL");

	// *****************************************************//

	let filterIndex;

	return 0;
}

printScales();

function pitchclassChordSeries() {
	let myArray; let i1; let i2; let i3; let i4; let i5;
	for(let myIterator=0; myIterator < 4096*12*5; myIterator++) {
		myIteratorIndex=myIterator%5;
		console.log(myIterator);
		if(myIteratorIndex===0) {i1 = myIterator % 12; console.log(i1);}
		if(myIteratorIndex===1) {i2 = myIterator % 12; console.log(i2);}
		if(myIteratorIndex===2) {i3 = myIterator % 12; console.log(i3);}
		if(myIteratorIndex===3) {i4 = myIterator % 12; console.log(i4);}
		if(myIteratorIndex===4) {i5 = myIterator % 12; console.log(i5);}
		console.log("\n" + i1 + " " + i2);
		console.log("\n" + i1 + " " + i2 + " " + i3);
		console.log("\n" + i1 + " " + i2 + " " + i3 + " " + i4);
		console.log("\n" + i1 + " " + i2 + " " + i3 + " " + i4 + " " + i5);
		for(let myIterator2=1; myIterator2<12*8; myIterator2++) {
			let i1Mul=i1*myIterator2; let i2Mul=i2*myIterator2; 
			let i3Mul=i3*myIterator2; let i4Mul=i4*myIterator2; let i5Mul=i5*myIterator2;
			console.log("\n" + i1Mul%128 + " " + i2Mul%128);
			console.log("\n" + i1Mul%128 + " " + i2Mul%128 + " " + i3Mul%128);
			console.log("\n" + i1Mul%128 + " " + i2Mul%128 + " " + i3Mul%128 + " " + i4Mul%128);
			console.log("\n" + i1Mul%128 + " " + i2Mul%128 + " " + i3Mul%128 + " " + i4Mul%128 + " " + i5Mul%128);
		}
	}
	return 0;
}

pitchclassChordSeries();

