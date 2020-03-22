var myval=0; 


var stockpileMajor = [0, 2, 4, 5, 7, 9, 11, 12];
/*
var stockpileMinor = [0, 2, 3, 5, 7, 8, 11, 12];
var stockpilePentatonic = [0, 2, 4, 6, 8];
var stockpileChromatic = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9 10, 11];
var dnatural = [0, 2, 3, 5, 7, 9, 10, 12];
var enatural = [0, 1, 3, 5, 7, 8, 10, 12];
var fnatural = [0, 2, 4, 6, 7, 9, 11, 12];
var gnatural = [0, 2, 4, 5, 7, 9, 10, 12];
var anatural = [0, 2, 3, 5, 7, 8, 10, 12];
var bnatural = [0, 1, 3, 5, 6, 8, 10, 12];
*/


if (jsarguments.length>1)
	myval = jsarguments[1];

function bang()
{
	outlet(0, myval);
}

function msg_int(v)
{
    var index = v % 12;
    var stockpileIndex1=stockpileMajor[index % stockpileMajor.length];
    var stockpileIndex2=stockpileMajor[(index % stockpileMajor.length + 2) % stockpileMajor.length];
    var stockpileIndex3=stockpileMajor[(index % stockpileMajor.length + 4) % stockpileMajor.length];
    var stockpileIndex4=stockpileMajor[(index % stockpileMajor.length + 6) % stockpileMajor.length];
    var chordArray = [stockpileIndex1, stockpileIndex2, stockpileIndex3, stockpileIndex4];
    post("index = " + chordArray);
	myval = chordArray;
	bang();
}

function msg_float(v)
{
    var index = v % 12;
    var stockpileIndex1=stockpileMajor[index % stockpileMajor.length];
    var stockpileIndex2=stockpileMajor[(index % stockpileMajor.length + 2) % stockpileMajor.length];
    var stockpileIndex3=stockpileMajor[(index % stockpileMajor.length + 4) % stockpileMajor.length];
    var stockpileIndex4=stockpileMajor[(index % stockpileMajor.length + 6) % stockpileMajor.length];
    var chordArray = [stockpileIndex1, stockpileIndex2, stockpileIndex3, stockpileIndex4];
    post("index = " + chordArray);
	myval = chordArray;
	bang();
}

function list()
{
	var a = arrayfromargs(arguments);
	post("received list " + a + "\n");
	myval = a;
	bang();
}

function anything()
{
	var a = arrayfromargs(messagename, arguments);
	post("received message " + a + "\n");
	myval = a;
	bang();
}