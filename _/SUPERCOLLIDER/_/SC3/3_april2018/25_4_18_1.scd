
(
{
	var sound=Mix.fill(n: rrand(1, 2),
		function: {[Pulse.ar(freq: 4400*4,
			width: WhiteNoise.ar(1),
			mul: Blip.ar(rrand(0.01, 30))),
		Pulse.ar(freq: 4400*4,
			width: WhiteNoise.ar(1),
			mul: Blip.ar(rrand(0.01, 30)))]});
	var rev=GVerb.ar(in: sound);
	Out.ar(bus: 0, channelsArray: sound+(rev * 0.06));
}.scope;
{
	var sound=Mix.fill(n: rrand(1, 3),
		function: {[SinOsc.ar(freq: 30*4,
			mul: Blip.ar(rrand(0.01, 30))),
		SinOsc.ar(freq: 30*4,
			mul: Blip.ar(rrand(0.01, 30)))]});
	//var rev=GVerb.ar(in: sound);
	Out.ar(bus: 0, channelsArray: sound);
}.scope;
{
	var sound=Mix.fill(n: 1,
		function: {[WhiteNoise.ar(mul: Blip.ar(rrand(0.01, 30))),
		WhiteNoise.ar(mul: Blip.ar(rrand(0.01, 30)))]});
	//var rev=GVerb.ar(in: sound);
	Out.ar(bus: 0, channelsArray: sound * 0.4);
}.scope;
{
	var sound=Mix.fill(n: rrand(1, 2),
		function: {[Pulse.ar(freq: 33,
			width: [[SinOsc, LFDNoise0, LFDNoise3].choose.kr(rrand(1, 30)), ChaosGen.allSubclasses.choose.ar(rrand(1, 30))].choose,
			mul: SinOsc.kr(rrand(0.01, 3))),
		Pulse.ar(freq: 4400*4,
			width: [[SinOsc, LFDNoise0, LFDNoise3].choose.kr(rrand(1, 30)), ChaosGen.allSubclasses.choose.ar(rrand(1, 30))].choose,
				mul: SinOsc.kr(rrand(0.01, 3)))]});
	var rev=GVerb.ar(in: sound);
	Out.ar(bus: 0, channelsArray: (sound+(rev * 0.06))*0.1);
}.scope;
)
