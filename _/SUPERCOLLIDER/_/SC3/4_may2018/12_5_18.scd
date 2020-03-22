(
{LeakDC.ar(
	Limiter.ar(SinOsc.ar(60,
		mul:[SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000)),
			SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000))])
	*0.03
))}.scope;

{LeakDC.ar(
	Limiter.ar(SinOsc.ar(60*0.5,
		mul:[SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000)),
			SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000))])
	*0.03
))}.scope;

{LeakDC.ar(
	Limiter.ar(SinOsc.ar(60*5,
		mul:[SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000)),
			SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000))])
	*0.03
))}.scope;

{LeakDC.ar(
	Limiter.ar(SinOsc.ar(60*13,
		mul:[SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000)),
			SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000))])
	*0.03
))}.scope;

{LeakDC.ar(
	Limiter.ar(SinOsc.ar(60*21,
		mul:[SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000)),
			SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000))])
	*0.03
))}.scope;

{LeakDC.ar(
	Limiter.ar(SinOsc.ar(60*55,
		mul:[SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000)),
			SinOsc.ar((SinOsc.kr(rrand(0.1, 30))**SinOsc.kr(rrand(0.1, 30)))*(440/2000))])
	*0.03
))}.scope;
)

60*55.postln