(
{
	var sourceSignal1, sourceSignal2, ampModulationSignal1, ampModulationSignal2;
	ampModulationSignal1 = SinOsc.kr(SinOsc.kr(0.333*3.14));
	ampModulationSignal2 = SinOsc.kr(SinOsc.kr(0.505*3.14));
	sourceSignal1 = Saw.ar(30*0.5*3.14, mul: SinOsc.kr(ampModulationSignal1));
	sourceSignal2 = Saw.ar(31*0.5*3.14*3.33, mul: SinOsc.kr(ampModulationSignal2));
	Pan2.ar(sourceSignal1+sourceSignal2, 0, 1);
}.scope;
)