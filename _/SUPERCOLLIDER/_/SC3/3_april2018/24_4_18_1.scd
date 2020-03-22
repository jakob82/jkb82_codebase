({var in, chain; in = SoundIn.ar(0) !2; chain = FFT({ LocalBuf(2.pow([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12].choose)) } ! 2, in); chain = [PV_MagFreeze(chain, ChaosGen.allSubclasses.choose.ar(0.9)), PV_MagFreeze(chain, ChaosGen.allSubclasses.choose.ar(0.6)) ]; IFFT(chain) + in;
}.play;)

Server.local.makeWindow