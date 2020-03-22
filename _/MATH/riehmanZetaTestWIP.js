const val1=1/3;
const val2=1/2;

function riehmanFunctionTest() {
	let isPrimus;
	result=1;
	for(let i=0; i<10; i++) {
		isPrimus++; 
		if(isPrimus%2===1) {result*=val1;}
		if(isPrimus%2===0) {result*=val2*-1;}
		console.log(result);
	}
	return 0;
}

riehmanFunctionTest();
