~buffer=Buffer.alloc(s, 8*44100, 2);

{RecordBuf.ar(SoundIn.ar([0, 0]), ~buffer.bufnum, loop: 0)}.scope

(
~synth={Mix.fill(2, {
	var buffer = ~buffer;
	{Mix.fill(1, {Warp1.ar(2, buffer,
		[LFDNoise0, LFDNoise1, LFDNoise3].choose.kr([0.1].choose)
		* ChaosGen.allSubclasses.choose.ar([00.01, 0.1].choose)
		+ TRand.kr(0, [0.1, 1].choose, Impulse.kr([0.1].choose) * ChaosGen.allSubclasses.choose.ar(0.1)),
		2**WhiteNoise.ar(rrand(0.025, 40)  * ChaosGen.allSubclasses.choose.ar(10))+0.25,
		[0.5].choose,
		overlaps: 1, windowRandRatio:  1, interp: [1, 2, 4].choose, mul: 6)})} ;
})};
)


~synthM1={CmdPeriod.run; ~synth.scope;}
~synthM2={{SoundIn.ar([0, 0])}.scope;}

~synthM1.value; ~synthM2.value;


