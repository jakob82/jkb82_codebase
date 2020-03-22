// replace this by your own sounds

(
~buffer1 = Buffer.read(s, Platform.resourceDir +/+ "sounds/amenMono.wav");
~buffer2 = Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01.wav");
)

(
{Limiter.ar(TGrains.ar(2, Impulse.kr(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 50), ~buffer1.bufnum, ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * [MouseX, MouseY].choose.kr(0.5, 2) **WhiteNoise.ar(ChaosGen.allSubclasses.choose.ar(MouseX.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 2)+0.5, ChaosGen.allSubclasses.choose.ar(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 4) * BufDur.kr(~buffer1), /*ChaosGen.allSubclasses.choose.ar(MouseY.kr(0.1, 30)).abs * */rrand(0.01, 0.05), WhiteNoise.ar(0.6), 6))}.scope;

{Limiter.ar(TGrains.ar(2, Impulse.kr(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 50), ~buffer2.bufnum, ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * [MouseX, MouseY].choose.kr(0.5, 2) **WhiteNoise.ar(ChaosGen.allSubclasses.choose.ar(MouseX.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 2)+0.5, ChaosGen.allSubclasses.choose.ar(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 4) * BufDur.kr(~buffer1), /*ChaosGen.allSubclasses.choose.ar(MouseY.kr(0.1, 30)).abs * */rrand(0.01, 0.05), WhiteNoise.ar(0.6), 6))}.scope;

{SinOsc.ar([ChaosGen.allSubclasses.choose.ar(rrand(1, 30))*20000+12, ChaosGen.allSubclasses.choose.ar(10)*20000+12])*0.1}.scope

)

Server.local.makeWindow