const myStock = [0, 2, 4, 5, 7, 9, 11];
let i3; let sum = 0;

function myStockpile() {
	do {
	for(let i = 0; i < 16; i++) 
	{
		let choice = parseInt(Math.floor(Math.random() * 3));
		if(choice === 0) {sum = 48;} 
		if(choice === 1) {sum = 60;} 
		if(choice === 2) {sum = 72;} 
		let currentPitch = Math.floor(Math.random() * myStock.length) + 1 % myStock.length + sum; 
		console.log("1" + currentPitch); i3++;
	}} while(i3 < 1000000);
	return 0;
}

myStockpile();

