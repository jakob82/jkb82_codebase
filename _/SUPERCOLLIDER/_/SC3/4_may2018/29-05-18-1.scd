(
~cena={
	var a, b, c;
	a=SinOsc.ar([rrand(33, 99), rrand(33, 99)], 0, 0.3);
	a=a*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]));
	b=SinOsc.ar([rrand(33, 99)*10, rrand(33, 99)*10], 0, 0.3);
	b=b*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]));
	c=SinOsc.ar([rrand(33, 99)*100, rrand(33, 99)*100], 0, 0.3);
	c=c*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]));
	a+b+c;
};
)

CmdPeriod.run; ~cena.play;

