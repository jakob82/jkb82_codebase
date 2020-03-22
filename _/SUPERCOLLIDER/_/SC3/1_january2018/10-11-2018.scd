// exorcismus drone - code by tmm2018 (eremitatm88@gmail.com)
// original code taken from http://sccode.org/1-516

(
SynthDef(\bass, { arg freq = 440, amp = 0.5, gate = 1;
	var snd, env, oscfreq, output;
	var lfo;
	oscfreq = {freq * LFNoise2.kr(Rand(0.0001,0.5)).range(0.98, 1.02)}!13;
	lfo = { SinOsc.kr({ 1/Rand(1,52) }!13) };
	env = Env.adsr(0.07, 1, 0.9, 0.1).kr(doneAction:2, gate: gate);
	output = LFSaw.ar(oscfreq, mul: lfo.value.range(0,1));
	output = RLPF.ar(output, (env*freq) + 1*freq * lfo.value.range(1/4,2), lfo.value.range(0.1,1));
	output = Splay.ar(output, lfo.value.range(0,1));
	output = output * env * amp;
	Out.ar(0, output);
	}).add;
)

(
(
Pdef(\bass, Pbind(
	\instrument, \bass,
	\tempo, 113/60,
	\ctranspose, -26,
	\degree, Pseq([Pseq([-1], 64)],inf),
	\dur, Pseq([Pseq([64], 64), inf]),
	\legato, 1.0,
	\amp, 0.6,
));
).play
)

(
(
Pdef(\bass, Pbind(
	\instrument, \bass,
	\tempo, 113/60,
	\ctranspose, -26,
	\degree, Pseq([Pseq([1], 64)],inf),
	\dur, Pseq([Pseq([64], 64), inf]),
	\legato, 1.0,
	\amp, 0.6,
));
).play
)

(
(
Pdef(\bass, Pbind(
	\instrument, \bass,
	\tempo, 113/60,
	\ctranspose, -26,
	\degree, Pseq([Pseq([3], 64)],inf),
	\dur, Pseq([Pseq([64], 64), inf]),
	\legato, 1.0,
	\amp, 0.6,
));
).play
)