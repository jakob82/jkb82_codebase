~buffer = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 17 (the stems).aiff");

(
{
~a={Warp1.ar(~buffer.numChannels, ~buffer.bufnum, LFDNoise0.kr(0.125) + TRand.kr(0, 0.01, Impulse.kr(40)), 1, 20, overlaps: 1, interp: 4, mul: 0.6)};
~b={Warp1.ar(~buffer.numChannels, ~buffer.bufnum, LFDNoise0.kr(0.125) + TRand.kr(0, 0.01, Impulse.kr(40)), 2, 20, overlaps: 1, interp: 4, mul: 0.6)};
~c={Warp1.ar(~buffer.numChannels, ~buffer.bufnum, LFDNoise0.kr(0.125) + TRand.kr(0, 0.01, Impulse.kr(40)), 0.125, 20, overlaps: 1, interp: 4, mul: 0.6)};
~d={PlayBuf.ar(~buffer.numChannels, ~buffer.bufnum, 1, 1, loop:1)};
~e={PlayBuf.ar(~buffer.numChannels, ~buffer.bufnum, 2, 1, loop:1)};
~f={PlayBuf.ar(~buffer.numChannels, ~buffer.bufnum, 0.125, 1, loop:1)};
	~f2={PlayBuf.ar(~buffer.numChannels, ~buffer.bufnum, 0.125, ((LFDNoise0.kr(19)*2)+0.125), loop:1)};

	~g={Warp1.ar(~buffer.numChannels, ~buffer.bufnum, SinOsc.kr(0.0001) + TRand.kr(0, 0.01, Impulse.kr(40)), 1, 0.2, overlaps: 1, interp: 4, mul: 0.3)};
~h={Warp1.ar(~buffer.numChannels, ~buffer.bufnum, SinOsc.kr(0.0001) + TRand.kr(0, 0.01, Impulse.kr(40)), 2, 0.2, overlaps: 1, interp: 4, mul: 0.3)};
~i={Warp1.ar(~buffer.numChannels, ~buffer.bufnum, SinOsc.kr(0.0001) + TRand.kr(0, 0.01, Impulse.kr(40)), 0.125, 0.2, overlaps: 1, interp: 4, mul: 0.3)};
	~j={Resonz.ar(GVerb.ar(WhiteNoise.ar(SinOsc.kr(SinOsc.kr(0.005))) * 0.03), 432)};
	~k={GVerb.ar(Resonz.ar(Dust.ar(1), 432))};

	Out.ar(0, ~a+~b+~c+~d+~e+~f+~g+~h+~i+~j+~k+~f2);
}.scope
)