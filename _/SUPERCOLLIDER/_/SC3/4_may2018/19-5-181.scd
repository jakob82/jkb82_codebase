(
{Resonz.ar([Dust.ar(10), Dust2.ar(10)], bwr: 0.05, mul:100)}.scope;
{Saw.ar([55, 55.1] / 2, mul: 0.1)}.scope;
)

(
{SinOsc.ar([55, 55.1], mul: 0.3)}.scope;
{SinOsc.ar([5000, 5100], mul: 0.003)}.scope;
{SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3}.scope;
)

(
{SinOsc.ar([55, 55.1], mul: 0.3)}.scope;
{SinOsc.ar([5000, 5100], mul: 0.003)}.scope;
)

(
{SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3}.scope;
{SinOsc.ar([4000, 8000], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3}.scope;
)

(
{Saw.ar([55, 55.1] / 2, mul: 0.1)}.scope;
{SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3}.scope;
{SinOsc.ar([4000, 8000], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3}.scope;
)