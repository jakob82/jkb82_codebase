~buffer=Buffer.read(s, "/home/tmm88/Documents/buffer1_1.wav")
{Warp1.ar(~buffer.numChannels, ~buffer.bufnum, ChaosGen.allSubclasses.choose.ar([MouseX.kr, MouseY.kr]*10) + TRand.kr(0, 0.01, Impulse.kr(400)), 1, [MouseX.kr(1, 20), MouseY.kr(1, 20)], overlaps:2, interp: 4, mul:0.3)}.scope
Server.local.makeWindow
