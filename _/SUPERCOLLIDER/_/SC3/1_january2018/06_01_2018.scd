// replace this by your own sounds

(
~buffer1 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 1 (the stems).aiff");
~buffer2 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 2 (the stems).aiff");
~buffer3 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 3 (the stems).aiff");
~buffer4 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 4 (the stems).aiff");
~buffer5 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 5 (the stems).aiff");
~buffer6 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 6 (the stems).aiff");
~buffer7 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 7 (the stems).aiff");
~buffer8 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 8 (the stems).aiff");
~buffer9 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 9 (the stems).aiff");
~buffer10 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 10 (the stems).aiff");
~buffer11 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 11 (the stems).aiff");
~buffer12 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 12 (the stems).aiff");
~buffer13 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 13 (the stems).aiff");
~buffer14 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 14 (the stems).aiff");
~buffer15 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 15 (the stems).aiff");
~buffer16 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 16 (the stems).aiff");
~buffer17 = Buffer.read(s, "/Users/a---/Desktop/archive/_solfège/solfège soundMusic/musica electronica/solfège electroacoustic/triptych part 1/37/Solfegge Sound Processing, And Sample Bank For Live Electronics #37 - 17 (the stems).aiff");
)

~buffer2 = Buffer.read(s, "/Users/a-/Desktop/professionalWork/muziekWerke/deprecated/composition:performance/albuns/colaboração clara/flauta solo/fica/1.wav");


(
~synth={Mix.fill(2, {
	var buffer = [~buffer2].choose;
{Mix.fill(1, {Warp1.ar(2, buffer,
	[LFDNoise0, LFDNoise1, LFDNoise3].choose.kr([0.00001, 0.01, 0.1].choose * 1000000000)
	* ChaosGen.allSubclasses.choose.ar([0.00001, 0.01, 0.1].choose * 1000000000)
+ TRand.kr(0, [0.01, 0.1, 1].choose, Impulse.kr([0.000001, 0.001, 0.1].choose * 1000000000) * ChaosGen.allSubclasses.choose.ar(0.1 * 100000000)),
2**WhiteNoise.ar(rrand(2.5, 40)  * ChaosGen.allSubclasses.choose.ar(10 * 20))+0.25,
	[0.5, 1].choose * 0.5,
overlaps: 1, windowRandRatio:  1, interp: [1, 2, 4].choose, mul: 1)})} ;
})};
)

~synthM={CmdPeriod.run; ~synth.scope;}

~synthM.value

Server.local.makeWindow