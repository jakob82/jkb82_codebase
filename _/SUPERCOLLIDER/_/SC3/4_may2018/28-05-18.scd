(
{
	var a, b, c;
	a=SinOsc.ar([55, 55], 0, 0.3);
	a=a*EnvGen.kr(Env.perc, Impulse.kr(0.6));
	b=SinOsc.ar([550, 550], 0, 0.3);
	b=b*EnvGen.kr(Env.perc, Impulse.kr(3.22));
	c=SinOsc.ar([5500, 5500], 0, 0.3);
	c=c*EnvGen.kr(Env.perc, Impulse.kr(5.05));
	a+b+c;
}.scope;
)