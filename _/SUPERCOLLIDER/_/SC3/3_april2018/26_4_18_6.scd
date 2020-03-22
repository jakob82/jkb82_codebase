// use with large time scale buffers

(
{Warp1.ar(~buffer.numChannels, ~buffer.bufnum, ChaosGen.allSubclasses.choose.ar([rrand(0.01, 1), rrand(0.01, 1)]*25).abs + TRand.kr(0, 0.01, Impulse.kr(40)), 2**WhiteNoise.ar(2)+0.125, windowSize: SinOsc.kr([rrand(0.01, 1), rrand(0.01, 1)]).abs * 0.1, overlaps: 1, interp: 4, mul: 0.3)}.scope;
{Warp1.ar(~buffer2.numChannels, ~buffer2.bufnum, ChaosGen.allSubclasses.choose.ar([rrand(0.01, 1), rrand(0.01, 1)]*25).abs + TRand.kr(0, 0.01, Impulse.kr(40)), 1, windowSize: SinOsc.kr([rrand(0.01, 1), rrand(0.01, 1)])*2.abs * 1, overlaps: 2, interp: 4, mul: 0.1)}.scope;
)

Server.local.makeWindow
