(
{(Pan2.ar(Mix.new(
	SinOsc.ar([33, 33*3, 33*5, 33*8, 33*13, 33*21],
		mul: 0.3 * SinOsc.kr(freq:[
			Line.kr(rrand(0.01, 5, dur: 60)),
			Line.kr(rrand(0.01, 5, dur: 60)),
			Line.kr(rrand(0.01, 5, dur: 60)),
			Line.kr(rrand(0.01, 5, dur: 60)),
			Line.kr(rrand(0.01, 5, dur: 60))]))),
([Line.kr(rrand(0.01, 5, dur: 60))])))*0.3
}.scope;

{(Pan2.ar(Mix.new(
	Saw.ar([33, 33*3, 33*5, 33*8, 33*13, 33*21],
		mul: 0.3 * SinOsc.kr(freq:[
			Line.kr(rrand(0.01, 5, dur: 60)),
			Line.kr(rrand(0.01, 5, dur: 60)),
			Line.kr(rrand(0.01, 5, dur: 60)),
			Line.kr(rrand(0.01, 5, dur: 60)),
			Line.kr(rrand(0.01, 5, dur: 60))]))),
([Line.kr(rrand(0.01, 5, dur: 60))])))*0.3
}.scope;

{(Pan2.ar(Mix.new(
	WhiteNoise.ar(mul: 0.3 * Impulse.kr([
			Line.kr(rrand(0.01*10, 5*10, dur: 60)),
			Line.kr(rrand(0.01*10, 5*10, dur: 60)),
			Line.kr(rrand(0.01*10, 5*10, dur: 60)),
			Line.kr(rrand(0.01*10, 5*10, dur: 60)),
			Line.kr(rrand(0.01*10, 5*10, dur: 60))])),
	([Line.kr(rrand(0.01, 5, dur: 60))])))*0.3)
}.scope;
)