(
b = Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01-44_1.aiff");
play({ Klang.ar(`[ [24.midicps, 24.midicps + 0.123, 24.midicps + 0.322], [0.3, 0.3, 0.3], [3.14, 3.14, 3.14]], 1, 0) * 0.04});
{Limiter.ar(LeakDC.ar(Pulse.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.006}.scope;
{Limiter.ar(LeakDC.ar(Pulse.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.006}.scope;
{Limiter.ar(LeakDC.ar(Pulse.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.006}.scope;
{Limiter.ar(LeakDC.ar(Saw.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.006}.scope;
{Limiter.ar(LeakDC.ar(Saw.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.006}.scope;
{Limiter.ar(LeakDC.ar(Saw.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.006}.scope;
{Limiter.ar(LeakDC.ar(SinOsc.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.06}.scope;
{Limiter.ar(LeakDC.ar(SinOsc.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.06}.scope;
{Limiter.ar(LeakDC.ar(SinOsc.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.06}.scope;
{Dust.ar(WhiteNoise.ar(3 * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)))!2}.scope;
{Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]* Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.3}.scope;
{Warp1.ar(b.numChannels, b.bufnum, LFDNoise0.kr(1) + TRand.kr(0, 0.01, Impulse.kr(400)), 2**WhiteNoise.ar(2) + 0.125, 5, -1, 3, 1, 4, 3)}.scope;
)