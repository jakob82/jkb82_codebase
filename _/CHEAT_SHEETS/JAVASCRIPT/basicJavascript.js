'use strict';

let fruits = ["Apple", "Banana"];
console.log(fruits.length);

console.log(fruits[0] + fruits[1]);

let first = fruits[0];
let last = fruits[fruits.length - 1];

fruits.forEach(function (item, index, array) {
    console.log(item, index)
})

let newLength = fruits.push('Orange');
last = fruits.pop();
first = fruits.shift();
newLength = fruits.unshift("strawberry");

fruits.push('Mango');
let pos = fruits.indexOf('Banana');
let removedItem = fruits.splice(pos, 1);

let vegetables = ['Cabbage', 'Turnip', 'Radish', 'Carrot'];

console.log(vegetables[0] + vegetables[1] + vegetables[2] + vegetables[3]);

pos = 1;
let n = 2;

console.log(pos + n);

let removedItems = vegetables.splice(pos, n);
console.log(vegetables);
console.log(removedItems);

let date = new Date(1969, 9, 6);
let date2 = new Date(1969, 6, 9);
let date3 = new Date(1999, 9, 9);
let date4 = new Date(1952, 9, 9);
let date5 = new Date(1947, 6, 9);

console.log(date); console.log(date2); console.log(date3);
console.log(date4); console.log(date5);

const datet = new Date(1988, 5, 9);
console.log(datet);

const today = new Date();
console.log(today)

let varA = 2;
let varB = 3;
let fibC = [1, 2, 3, 5, 8, 13, 21];

let _result;
for (let myIt = 0; myIt < fibC.length; myIt++) { _result += fibC; console.log(_result); }

console.log(eval("2+2"));
console.log(eval("3+2"));
console.log(eval("1+3+5+8+13+21"));
console.log(eval("1+3+5+8+13"));
console.log(eval("1+5+8"));

function myVars() {
    console.log(eval("varA+varA"));
    console.log(eval("varA+varB"));

    let result = 0;

    for (let i = 0; i < fibC.length; i++) {
        result += fibC[i];
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

console.log(Math.cos(2)*Math.log(2));

const _biggestNum = Number.MAX_VALUE;
const _smallestNum = Number.MIN_VALUE;
const _infinitetNum = Number.POSITIVE_INFINITY;
const _negativeInfinityNum = Number.NEGATIVE_INFINITY;
const _notAnum = Number.NaN;

console.log(_biggestNum);
console.log(_smallestNum);
console.log(_infinitetNum);
console.log(_negativeInfinityNum);
console.log(_notAnum);

console.log(_biggestNum + _infinitetNum);
console.log(_smallestNum + _negativeInfinityNum);
console.log(_notAnum);

let _biggestInt = Number.MAX_SAFE_INTEGER;
let _smallestInt = Number.MIN_SAFE_INTEGER;

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
console.log(parseFloat(314 * 0.01));

console.log(myInt * myFloat);

let a = { a: 1 };
let b = Object.create(a);

console.log(a.a);
console.log(b.a);
b.a = 5;
console.log(a.a);
console.log(b.a);
delete b.a;
console.log(a.a);
console.log(b.a);
delete a.a;
console.log(a.a);
console.log(b.a);

function Graph() { this.vertices = [4, 4]; }

let g = new Graph();
console.log(g.vertices);

g.vertices = 25;
console.log(g.vertices);

delete g.vertices;
console.log(g.vertices);

class Polygon {
    constructor(height, width) {
        this.height = height;
        this.width = width;
    }
}

class Square extends Polygon {
    constructor(sideLength) {
        super(sideLength, sideLength);
    }
    get area() {
        return this.height * this.width;
    }
    set sideLength(newLength) {
        this.height = newLength;
        this.width = newLength;
    }
}

let square = new Square(2);

/*
let undefined = 5;
let Infinity = 5;

let obj1 = {};
Object.defineProperty(obj1, 'x', {value: 42, writable: false});
obj1.x = 9;

let obj2 = {get x() {return 17;}};
obj2.x=5;

let fixed = {};
Object.preventExtensions(fixed);
fixed.newProp = 'ohai';
*/

let o = { p: 1, p: 2 };

let buffer = new ArrayBuffer(16);
if (buffer.byteLength === 16) console.log("16bytes");
else console.log("another size");

let int32View = new Int32Array(buffer);
for (let i = 0; i < int32View.length; i++) int32View[i] = i * 2; console.log(int32View);

let int16View = new Int16Array(buffer);
for (let i = 0; i < int16View.length; i++) int16View[i] = i * 2; console.log(int16View);

/*
// struct in C
struct someStruct {unsigned long id; char username[16]; float amountDue;};
*/

buffer = new ArrayBuffer(24);
let idView = new Uint32Array(buffer, 0, 1);
let usernameView = new Uint8Array(buffer, 4, 16);
let amountDueView = new Float32Array(buffer, 20, 1);

let typedArray = new Uint8Array([1, 2, 3, 4]),
    normalArray = Array.prototype.slice.call(typedArray);
normalArray.length === 4;
normalArray.constructor === Array;

n = 123; let s = 'azerty';
o = { a: 1, b: null };
a = [1, null, 'abra'];
function f(a) { return a + 2; }

/*
someElement.addEventListener('click', function() {
    someElement.style.backgroundColor = 'blue';
}, false);
*/

let d = new Date();
// let e = document.createElement('div');
s = 'azerty'; let s2 = s.substr(0, 3);
a = ['ouais ouais', 'nan nan'];
let a2 = ['generation', 'nan nan'];
let a3 = a.concat(a2);

console.log(d);
console.log(s);
console.log(s2);
console.log(a);
console.log(a2);
console.log(a3);

console.log(d + s);
console.log(d + s2);
console.log(d + a + s);
console.log(d + a + s2);
console.log(d + a2 + s);
console.log(d + a3 + s);

let x = {
    a: {
        b: 2
    }
};

console.log(x.a.b);

let y = x;
x = 1;
let z = y.a;
y = 'mozilla';
z = null;

console.log(y + z);

console.log(y);
console.log(y.a);
//console.log(y.a.b);

console.log(x);
console.log(x.a);
//console.log(x.a.b);

function f() {
    let x = {};
    let y = {};
    x.a = y;
    y.a = x;

    return 'azerty';
}

f();

/*
var div;
window.onload = function() {
  div = document.getElementById('myDivElement');
  div.circularReference = div;
  div.lotsOfData = new Array(10000).join('*');
};
*/

function foo(b) { let a = 10; return a + b + 11; }
function bar(x) { let y = 3; return foo(x * y); }

console.log(bar(7));

//while(queue.waitForMessage()) {queue.processNextMessage();}

s = new Date().getSeconds();

setTimeout(function () {
    console.log("Ran after " + (new Date().getSeconds() - s) + " seconds");
}, 500)

while (true) {
    if (new Date().getSeconds() - s >= 2) {
        console.log("Good, looped for 2 seconds")
        break;
    }
}


(function () {

    console.log('this is the start');

    setTimeout(function cb() {
        console.log('Callback 1: this is a msg from call back');
    });

    console.log('this is just a message');

    setTimeout(function cb1() {
        console.log('Callback 2: this is a msg from call back');
    }, 0);

    console.log('this is the end');

})();

foo = 1; bar = foo; bar = 9;
console.log(foo, bar);

foo = [1, 2]; bar = foo; bar[0] = 9;
console.log(foo[0], bar[0]);

a = 1; b = 2;
a = 1; b = 2;

console.log(a+b);

let count = 1; if (true) { count++; console.log; }

{
    let a = 1;
    const b = 1;
}

console.log(a);
console.log(b);

(function () {
    console.log("welcome to the internet. please follow me");
}());

//let test;
//if(currentUser) {test = () => {console.log('Yup.');}}

function concatenateAll() { const args = Array.prototype.slice.call(arguments); return arguments.join(''); }
function concatenateAll(...args) { return args.join(''); }

b = 1;

//function count(a = b++) { console.log(a); }

/*
count();
count();
count(3);
count();
*/