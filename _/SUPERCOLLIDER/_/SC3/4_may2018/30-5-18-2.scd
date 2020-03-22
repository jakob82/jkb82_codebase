(
{WhiteNoise.ar(SinOsc.kr(SinOsc.kr([0.0322, 0.0333], mul:0.3)))*0.06}.scope;
{SinOsc.ar((43-12).midicps)*0.06!2}.scope;
)

(
{SinOsc.ar(4000, mul:SinOsc.kr([0.0322, 0.0333], mul:0.3))*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))*1}.scope;
	{SinOsc.ar((43-12).midicps)*EnvGen.kr(Env.perc, ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))*0.06!2}.scope;
)