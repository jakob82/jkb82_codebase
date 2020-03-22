(
{
	var s1, s2, s3, out;
	s1  = SinOsc.ar(30, 30)    * EnvGen.kr(Env.perc, Impulse.kr(0.1))  ! 2;
	s2  = SinOsc.ar(300, 300)  * EnvGen.kr(Env.perc, Impulse.kr(0.07)) ! 2;
	s3  = SinOsc.ar(3000, 600) * EnvGen.kr(Env.perc, Impulse.kr(0.3))  ! 2;
	out = (s1 + s2 + s3)*0.1;  Out.ar(0, out + GVerb.ar(out*0.3, revtime:60));
}.scope;
)