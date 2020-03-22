let a=1; let b=1; let size=10;

function fibonacci(a, b, size) {
	result=a;
	for(let i=0; i<size; i++) {
		a=b; result+=b; result=b;
		console.log("i" + i); console.log("size" + size);
		console.log("a = " + a); console.log("b = " + b); console.log("result = " + result);
	}
	return 0;
}

fibonacci(a,b,size);
