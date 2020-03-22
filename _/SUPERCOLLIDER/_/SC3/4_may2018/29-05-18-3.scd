

CmdPeriod.run; ~cena.play;.

(
{Saw.ar([rrand(33, 99), rrand(33, 99)], 0.03)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))}.scope;
{Saw.ar([rrand(330, 990), rrand(330, 990)], 0.01)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))}.scope;
{Saw.ar([rrand(3300, 9900), rrand(3300, 9900)], 0.02)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))}.scope;
{Pulse.ar([rrand(33, 99), rrand(33, 99)], 0.03)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))}.scope;
{Pulse.ar([rrand(330, 990), rrand(330, 990)], 0.01)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))}.scope;
{Pulse.ar([rrand(3300, 9900), rrand(3300, 9900)], 0.02)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))}.scope;
{SinOsc.ar([rrand(33, 99), rrand(33, 99)], 0, 0.03)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))}.scope;
{SinOsc.ar([rrand(330, 990), rrand(330, 990)], 0, 0.01)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))}.scope;
{SinOsc.ar([rrand(3300, 9900), rrand(3300, 9900)], 0, 0.02)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))}.scope;
)