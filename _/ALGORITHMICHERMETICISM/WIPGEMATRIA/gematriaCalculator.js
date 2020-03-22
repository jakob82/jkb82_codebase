function hermeticSimpleGematriaCalculator() {
	let gematriaCalculatorOutput; let gematriaCalculatorInput = Array.from("tiago");

	for(let i = 0; i < gematriaCalculatorInput.length; i++)

	{
	 let calculateAsciiValue=gematriaCalculatorInput[i].toUpperCase();
	 gematriaCalculatorOutput+=parseInt(calculateAsciiValue, 10);
	}

	return gematriaCalculatorOutput;
}

hermeticSimpleGematriaCalculator();
