~buffer=Buffer.read(s, "/Users/a-/Desktop/voice.wav");

(
{Pan2.ar(PlayBuf.ar(2, ~buffer, 1, 1, 0, 1), 0.5)}.scope;
{Warp1.ar(2, ~buffer, LFDNoise0.kr(1) + TRand.kr(0, 0.01, Impulse.kr(40)), 1, 0.5, overalps:1, windowRandRatio:1, interp:4, mul:0.4)}.scope;
{
	var a, b, c;
	a=SinOsc.ar([55, 55], 0, 0.3);
	a=a*EnvGen.kr(Env.perc, Impulse.kr(0.6));
	b=SinOsc.ar([550, 550], 0, 0.3);
	b=b*EnvGen.kr(Env.perc, Impulse.kr(3.22));
  	c=SinOsc.ar([5500, 5500], 0, 0.3);
	c=c*EnvGen.kr(Env.perc, Impulse.kr(5.05));
	(a+b+c)*0.6;
}.scope;
{WhiteNoise.ar(SinOsc.kr(SinOsc.kr([3.22, 3.33], mul:0.3)))*0.2}.scope;
{SinOsc.ar((43-12).midicps)*0.2!2}.scope;
{
	var s1, s2, s3, s4, s5, out;
	s1=Pulse.ar([48.midicps, 48.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);
	s2=Pulse.ar([36.midicps, 36.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);
	//s3=Pulse.ar([24.midicps, 24.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);
	//s4=Pulse.ar([72.midicps, 74.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);
	s5=Pulse.ar([60.midicps, 60.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);

	out=(s1 + s2 /*+ s3 + s4*/ + s5);
	out=LeakDC.ar(Limiter.ar(out)) *0.1/* + GVerb.ar(LeakDC.ar(Limiter.ar(out))) * 0.3*/;
	Out.ar(0, out);
}.scope;
)

Server.local.makeWindow

