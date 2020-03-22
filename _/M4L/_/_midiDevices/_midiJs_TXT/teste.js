var inputVar=0;
var output;

if (jsarguments.length>1)
	inputVar = jsarguments[1];

function ifStatement() {
    if(inputVar==60) {output="kseime xoriçe"};
    if(inputVar==61) {output="o calimero"};
    if(inputVar==62) {output="foi ao **"};
    if(inputVar==63) {output="a abelha maia"};
}

function bang() {
    outlet(0, output);
}

function msg_int(v) {
	post("received int " + v + "\n");
	inputVar = v;
    ifStatement();
	bang();
}

function msg_float(v) {
	post("received int " + v + "\n");
	inputVar = v;
    ifStatement();
	bang();
}
