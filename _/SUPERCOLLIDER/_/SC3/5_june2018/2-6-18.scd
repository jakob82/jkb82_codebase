// prototype algorithmic cinematic narrative

// ****************************
// ****************************

/*

binary form in three parts:
- first, you get part A
- then you add a section;
- then you add rev;
- then you cross fade a with b
- you set a fade out of the rev section 'til the end

*/

//a

(
{
	var s1, s2, s3, s4, s5, out;
	s1=Saw.ar([60, 63].midicps, 0.3);
	s1=s1*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([1, 3]));
	s2=Saw.ar([65, 67].midicps, 0.3);
	s2=s2*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([5, 7]));
	s3=Saw.ar([60-12, 60-12].midicps, 0.3);
	s3=s3*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([3, 5]));
	s4=Saw.ar([60-36, 60-36].midicps, 0.3);
	s4=s4*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([4, 5]));
	s5=Saw.ar([60+24, 60+24].midicps, 0.3);
	s5=s5*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([5, 9]));
	out=(s1 + s2 + s3 + s4 + s5);
	out=LeakDC.ar(Limiter.ar(out)) * 3/* + GVerb.ar(LeakDC.ar(Limiter.ar(out))) * 0.3*/;
	Out.ar(0, out);
}.scope;
)


//rev
(
{
	var s1, s2, s3, s4, s5, out;
	s1=Saw.ar([60, 63].midicps, 0.3);
	s1=s1*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([1, 3]));
	s2=Saw.ar([65, 67].midicps, 0.3);
	s2=s2*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([5, 7]));
	s3=Saw.ar([60-12, 60-12].midicps, 0.3);
	s3=s3*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([3, 5]));
	s4=Saw.ar([60-36, 60-36].midicps, 0.3);
	s4=s4*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([4, 5]));
	s5=Saw.ar([60+24, 60+24].midicps, 0.3);
	s5=s5*EnvGen.ar(Env.perc, ChaosGen.allSubclasses.choose.ar([5, 9]));
	out=(s1 + s2 + s3 + s4 + s5);
	out=GVerb.ar(LeakDC.ar(Limiter.ar(out)), revtime:9, drylevel:0) * 0.8;
	Out.ar(0, out);
}.scope;
)

// b

(
{
	var s1, s2, s3, s4, s5, out;
	s1=Pulse.ar([60.midicps, 60.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);
	s2=Pulse.ar([48.midicps, 48.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);
	//s3=Pulse.ar([24.midicps, 24.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);
	//s4=Pulse.ar([72.midicps, 74.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);
	s5=Pulse.ar([72.midicps, 72.midicps + 3], SinOsc.kr(rrand(0.01, 1), 0, 3, 0.5).abs);

	out=(s1 + s2 /*+ s3 + s4*/ + s5);
	out=LeakDC.ar(Limiter.ar(out)) *0.8/* + GVerb.ar(LeakDC.ar(Limiter.ar(out))) * 0.3*/;
	Out.ar(0, out);
}.scope;
)