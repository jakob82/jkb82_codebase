~buffer = Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01-44_1.aiff");

(
{Warp1.ar(~buffer.numChannels, ~buffer.bufnum, [LFDNoise0.kr(0.1), LFDNoise3.kr(0.1)] + TRand.kr(high: 0.01, trig: Impulse.kr(0.044)), [TRand.kr(high: 2, trig: Impulse.kr(0.044)), TRand.kr(high: 4, trig: Impulse.kr(0.044))], 0.02, overlaps: 1, windowRandRatio: 0.1, interp: 4, mul: 0.03)}.scope;
{Warp1.ar(b.numChannels, b.bufnum, [LFDNoise0.kr(0.1), LFDNoise3.kr(0.1)] + TRand.kr(high: 0.01, trig: Impulse.kr(0.4)), [WhiteNoise.ar(0.2), WhiteNoise.ar(40)], 0.02, overlaps: 1, windowRandRatio: 0.1, interp: 4, mul: 0.1)}.scope;
{Warp1.ar(~buffer.numChannels, ~buffer.bufnum, [LFDNoise0.kr(0.1), LFDNoise3.kr(0.1)] + TRand.kr(high: 0.01, trig: Impulse.kr(0.044)), [TRand.kr(high: 2, trig: Impulse.kr(0.044)), TRand.kr(high: 4, trig: Impulse.kr(0.044))], 0.02, overlaps: 1, windowRandRatio: 0.1, interp: 4, mul: 0.3)}.scope;
{Warp1.ar(b.numChannels, b.bufnum, [LFDNoise0.kr(0.1), LFDNoise3.kr(0.1)] + TRand.kr(high: 0.01, trig: Impulse.kr(0.4)), [WhiteNoise.ar(0.2), WhiteNoise.ar(40)], 0.02, overlaps: 1, windowRandRatio: 0.1, interp: 4, mul: 1)}.scope;
{Mix.fill(2, {
	var buffer = [~buffer].choose;
{Mix.fill(1, {Warp1.ar(~buffer.numChannels, ~buffer.bufnum,
	[LFDNoise0, LFDNoise1, LFDNoise3].choose.kr([0.00001, 0.01, 0.1].choose * 1000000000)
	* ChaosGen.allSubclasses.choose.ar([0.00001, 0.01, 0.1].choose * 1000000000)
+ TRand.kr(0, [0.01, 0.1, 1].choose, Impulse.kr([0.000001, 0.001, 0.1].choose * 1000000000) * ChaosGen.allSubclasses.choose.ar(0.1 * 100000000)),
2**WhiteNoise.ar(rrand(2.5, 40)  * ChaosGen.allSubclasses.choose.ar(10 * 20))+0.25,
	[0.5, 1].choose, overlaps: 1, windowRandRatio:  1, interp: [1, 2, 4].choose, mul: 1)})} ;
})}.scope;
{SinOsc.ar([55, 55.1], mul: 0.3)}.scope;
{SinOsc.ar([5000, 5100], mul: 0.003)}.scope;
{SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3}.scope;
{Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)])))}.scope;
{Resonz.ar([Dust.ar(10), Dust2.ar(10)], bwr: 0.05, mul:100)}.scope;
{Saw.ar([55, 55.1] / 2, mul: 0.1)}.scope;
)





