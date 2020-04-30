{GVerb.ar(SinOsc.ar([8000, 8000], 0, [EnvGen.ar(Env.perc(0.05, 0.005, 1, -4), doneAction: 2), EnvGen.ar(Env.perc(0.05, 0.005, 1, -4), doneAction: 2)]), revtime: 1)}.scope;
{GVerb.ar(WhiteNoise.ar(1 * [EnvGen.ar(Env.perc(0.05, 0.01, 0.3, -4), doneAction: 2), EnvGen.ar(Env.perc(0.05, 0.01, 0.3, -4), doneAction: 2)]), revtime: 0.5)}.scope;
{GVerb.ar(Saw.ar([33, 32], 0, [EnvGen.ar(Env.perc(0.05, 0.05, 1, -4), doneAction: 2), EnvGen.ar(Env.perc(0.05, 0.005, 1, -4), doneAction: 2)]), revtime: 1)}.scope;

(
SynthDef(\test1, { |out|
	Out.ar(out, GVerb.ar(SinOsc.ar([8000, 8000], 0, [EnvGen.ar(Env.perc(0.05, 0.005, 1, -4), doneAction: 2), EnvGen.ar(Env.perc(0.05, 0.005, 1, -4), doneAction: 2)]), revtime: 1))}).add;
)

(
SynthDef(\test2, { |out|
	Out.ar(out, GVerb.ar(WhiteNoise.ar(1 * [EnvGen.ar(Env.perc(0.05, 0.003, 0.3, -4), doneAction: 2), EnvGen.ar(Env.perc(0.05, 0.01, 0.3, -4), doneAction: 2)]), revtime: 0.5))}).add;
)

(
SynthDef(\test3, { |out|
	Out.ar(out, GVerb.ar(Saw.ar([33, 32], 0, [EnvGen.ar(Env.perc(0.05, 0.05, 1, -4), doneAction: 2), EnvGen.ar(Env.perc(0.05, 0.005, 1, -4), doneAction: 2)]), revtime: 1))}).add;
)

(
// Alternative syntax, using a key/pattern array:
Pbind(*[
    \instrument,            \test1,
	dur:                Pseq([1, 2, 1, 1]/10, inf),
]).play;
)

(
// Alternative syntax, using a key/pattern array:
Pbind(*[
    \instrument,            \test2,
    dur:                Pseq([1, 1, 2]/10, inf),
]).play;
)

(
// Alternative syntax, using a key/pattern array:
Pbind(*[
    \instrument,            \test3,
    dur:                Pseq([1, 1, 1, 2, 2]/10, inf),
]).play;
)