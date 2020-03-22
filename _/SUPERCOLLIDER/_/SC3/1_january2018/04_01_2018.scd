(
~mySynthesisDefinition={{Mix.new([Resonz.ar(WhiteNoise.ar, [55, 55.1], [0.05, 0.051], 1), Mix.fill(2, {Resonz.ar(WhiteNoise.ar, [55, 55.1] * [40, 80, 160, 320].choose, [0.05, 0.051], ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))})*0.3, SinOsc.ar([22.5, 22.51], mul: 0.3), SinOsc.ar([440, 441], mul: 0.003), Pulse.ar([440, 441], width: SinOsc.kr([0.01, 0.012]), mul: 0.003)])*0.06};
{Mix.new([Resonz.ar(WhiteNoise.ar, [55, 55.1], [0.05, 0.051], 1), Mix.fill(2, {Resonz.ar(WhiteNoise.ar, [55, 55.1] * [40, 80, 160, 320].choose, [0.05, 0.051], ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))})*0.3, SinOsc.ar([22.5, 22.51], mul: 0.3), SinOsc.ar([440, 441], mul: 0.003), Pulse.ar([440, 441], width: SinOsc.kr([0.01, 0.012]), mul: 0.003)]) * ChaosGen.allSubclasses.choose.ar(rrand(1, 30))};
{FreeVerb.ar({Mix.new([Resonz.ar(WhiteNoise.ar, [55, 55.1], [0.05, 0.051], 1), Mix.fill(2, {Resonz.ar(WhiteNoise.ar, [55, 55.1] * [40, 80, 160, 320].choose, [0.05, 0.051], ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))})*0.3, SinOsc.ar([22.5, 22.51], mul: 0.3), SinOsc.ar([440, 441], mul: 0.003), Pulse.ar([440, 441], width: SinOsc.kr([0.01, 0.012]), mul: 0.003)]) * ChaosGen.allSubclasses.choose.ar(rrand(1, 30))})};}
)

~mySynthesisDefinitionM = {CmdPeriod.run; ~mySynthesisDefinition.play;}

~mySynthesisDefinitionM.value