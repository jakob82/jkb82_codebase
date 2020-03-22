let fruits = ["Apple", "Banana"];
console.log(fruits.length);

let first   = fruits[0];
let last    = fruits[fruits.length - 1];

fruits.forEach(function(item, index, array) {
    console.log(item, index)
  })

let newLength = fruits.push('Orange');
let last = fruits.pop();
let first = fruits.shift();
let newLength = fruits.unshift("strawberry");

fruits.push('Mango');
let pos = fruits.indexOf('Banana');
let removedItem = fruits.splice(pos, 1);

let vegetables = ['Cabbage', 'Turnip', 'Radish', 'Carrot'];
console.log(vegetables);

let pos = 1;
let n = 2;

let removedItems = vegetables.splice(pos, n);
console.log(vegetables);
console.log(removedItems);

new date = new Date(1969, 9, 6); new date2 = new Date(1969, 6, 9); 
new date3 = new Date(1999, 9, 9); new date4 = new Date(1952, 9, 9); new date5 = new Date(1947, 6, 9);

console.log(date); console.log(date2); console.log(date3); 
console.log(date4); console.log(date5);

const datet = new Date(1988, 5, 9);
console.log(datet);

const today = new Date();
console.log(todayDate)

let varA=2;
let varB=3;
let fibC=[1, 2, 3, 5, 8, 13, 21];

console.log(eval("2+2"));
console.log(eval("3+2"));
console.log(eval("1+3+5+8+13+21"));
console.log(eval("1+3+5+8+13"));
console.log(eval("1+5+8"));

function myVars() {
    console.log(eval("varA+varA"));
    console.log(eval("varA+varB"));

    let result=0;

    for(let i=0; i<fibC.length; i++) {
        result+=fibC[i];
        console.log(result);
    }
}

myVars();

console.log(Math.abs(2));
console.log(Math.acos(2));
console.log(Math.asin(2));
console.log(Math.asinh(2));

console.log(Math.cos(2));
console.log(Math.cosh(2));
console.log(Math.log(2));
console.log(Math.log1p(2));

const _biggestNum                        =   Number.MAX_VALUE;
const _smallestNum                       =   Number.MIN_VALUE;
const _infinitetNum                      =   Number.POSITIVE_INFINITY;
const _negativeInfinityNum               =   Number.NEGATIVE_INFINITY;
const _notAnum                           =   Number.NaN;

console.log(_biggestNum);
console.log(_smallestNum);
console.log(_infinitetNum);
console.log(_negativeInfinityNum);
console.log(_notAnum);

let _biggestInt                        =   Number.MAX_SAFE_INTEGER;
let _smallestInt                       =   Number.MIN_SAFE_INTEGER;

console.log(_biggestInt);
console.log(_smallestInt);

let _d = new Date();
console.log(Number(_d));

_biggestInt = BigInt(_biggestInt);
console.log(_biggestInt);

_smallestInt = BigInt(_smallestInt);
console.log(_smallestInt);

const myFloat = 3.14;

console.log(myFloat);
console.log(parseInt(myFloat));

const myInt = 314;

console.log(myInt);
console.log(parseFloat(314*0.01));