(
{[SinOsc.ar(8000, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 60))), SinOsc.ar(8000, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 60)))]*0.4}.scope;
{[SinOsc.ar(30, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(30, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))]*0.8}.scope;
{[WhiteNoise.ar(mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 15))), WhiteNoise.ar(mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 15)))]*0.02}.scope;
)