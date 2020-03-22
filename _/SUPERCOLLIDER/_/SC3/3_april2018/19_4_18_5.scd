(
{
	([Pulse.ar(30, SinOsc.kr(rrand(0.01, 0.1)), 0.3), Pulse.ar(31, SinOsc.kr(rrand(0.01, 0.1)), 0.3)] -	LeakDC.ar([ChaosGen.allSubclasses.choose.ar(rrand(1, 30)), 	ChaosGen.allSubclasses.choose.ar(rrand(1, 30))], mul: 6))
}.scope;
)

(
{LeakDC.ar([ChaosGen.allSubclasses.choose.ar(rrand(1, 30)), 	ChaosGen.allSubclasses.choose.ar(rrand(1, 30))], mul: 6);
}.scope;
)

Server.local.makeWindow