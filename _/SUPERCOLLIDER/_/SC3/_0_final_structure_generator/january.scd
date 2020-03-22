(
~synth1={
~a={SinOsc.ar([22.5, 23], mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))* 0.3)};
~b={SinOsc.ar([22.5, 23], mul: 0.3)};
~c={SinOsc.ar([22.5, 23]*400, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))* 0.03)};
~d={SinOsc.ar([22.5, 23]*400, mul: 0.03)};
Out.ar(0, ~a+~b+~c+~d);
};
)

(
~synth2={Mix.fill(4, {Mix.new([SinOsc.ar([22.5, 22.5137] * rrand(0.8, 1.2), mul:0.3), SinOsc.ar([22.5, 22.5137] * rrand(0.8, 1.2) * 40, mul:0.03), SinOsc.ar([22.5, 22.5137] * rrand(0.8, 1.2) * 80, mul:0.003), SinOsc.ar([22.5, 22.5137] * rrand(0.8, 1.2) * 150, mul:0.003)])}) * 0.3};
)

(
~synth3={{Mix.new([Resonz.ar(WhiteNoise.ar, [55, 55.1], [0.05, 0.051], 1), Mix.fill(2, {Resonz.ar(WhiteNoise.ar, [55, 55.1] * [40, 80, 160, 320].choose, [0.05, 0.051], ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))})*0.3, SinOsc.ar([22.5, 22.51], mul: 0.3), SinOsc.ar([440, 441], mul: 0.003), Pulse.ar([440, 441], width: SinOsc.kr([0.01, 0.012]), mul: 0.003)])*0.06};
{Mix.new([Resonz.ar(WhiteNoise.ar, [55, 55.1], [0.05, 0.051], 1), Mix.fill(2, {Resonz.ar(WhiteNoise.ar, [55, 55.1] * [40, 80, 160, 320].choose, [0.05, 0.051], ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))})*0.3, SinOsc.ar([22.5, 22.51], mul: 0.3), SinOsc.ar([440, 441], mul: 0.003), Pulse.ar([440, 441], width: SinOsc.kr([0.01, 0.012]), mul: 0.003)]) * ChaosGen.allSubclasses.choose.ar(rrand(1, 30))};
{FreeVerb.ar({Mix.new([Resonz.ar(WhiteNoise.ar, [55, 55.1], [0.05, 0.051], 1), Mix.fill(2, {Resonz.ar(WhiteNoise.ar, [55, 55.1] * [40, 80, 160, 320].choose, [0.05, 0.051], ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))})*0.3, SinOsc.ar([22.5, 22.51], mul: 0.3), SinOsc.ar([440, 441], mul: 0.003), Pulse.ar([440, 441], width: SinOsc.kr([0.01, 0.012]), mul: 0.003)]) * ChaosGen.allSubclasses.choose.ar(rrand(1, 30))})};};
)

~synth4 = {[Resonz.ar([[Dust, Dust2].choose.ar(ChaosGen.allSubclasses.choose.ar(0.1).abs * 10), [Dust, Dust2].choose.ar(ChaosGen.allSubclasses.choose.ar(0.1).abs * 10)], rrand(30, 1200), 0.05)*60, FreeVerb.ar(Resonz.ar([[Dust, Dust2].choose.ar(ChaosGen.allSubclasses.choose.ar(0.1).abs * 10), [Dust, Dust2].choose.ar(ChaosGen.allSubclasses.choose.ar(0.1).abs * 10)], rrand(30, 1200), 0.05)*60)]};

(
~synth5={var a, b, c, d;
a={[SinOsc.ar(rrand(30, 75), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(rrand(30, 75), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))] * 0.3};
b={[SinOsc.ar(rrand(220, 440), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(rrand(220, 440), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))] * 0.1};
c={[SinOsc.ar(rrand(880, 2200), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(rrand(880, 2200), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))] * 0.064};
d={[SinOsc.ar(rrand(8800, 22000), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(rrand(8800, 22000), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))] * 0.064};
Out.ar(0, (a+b+c+d)*0.4);
};
)

~synthM={CmdPeriod.run;~synth1.scope;~synth2.scope;~synth3.scope;~synth4.scope;~synth5.scope;}

~synthM.value