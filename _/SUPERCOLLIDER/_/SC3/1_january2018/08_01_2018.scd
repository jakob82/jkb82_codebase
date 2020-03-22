~myDust = {[Resonz.ar([[Dust, Dust2].choose.ar(ChaosGen.allSubclasses.choose.ar(0.1).abs * 10), [Dust, Dust2].choose.ar(ChaosGen.allSubclasses.choose.ar(0.1).abs * 10)], rrand(30, 1200), 0.05)*60FreeVerb.ar(Resonz.ar([[Dust, Dust2].choose.ar(ChaosGen.allSubclasses.choose.ar(0.1).abs * 10), [Dust, Dust2].choose.ar(ChaosGen.allSubclasses.choose.ar(0.1).abs * 10)], rrand(30, 1200), 0.05)*60)]};

(
~mySine={var a, b, c, d;
a={[SinOsc.ar(rrand(30, 75), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(rrand(30, 75), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))] * 0.3};
b={[SinOsc.ar(rrand(220, 440), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(rrand(220, 440), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))] * 0.1};
c={[SinOsc.ar(rrand(880, 2200), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(rrand(880, 2200), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))] * 0.064};
d={[SinOsc.ar(rrand(8800, 22000), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(rrand(8800, 22000), mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))] * 0.064};
	Out.ar(0, (a+b+c+d)*0.4);
};
)

~dustM1={CmdPeriod.run; ~myDust.play; ~mySine.play}
~dustM2={CmdPeriod.run; ~myDust.play;}
~dustM3={CmdPeriod.run; ~mySine.play}

[~dustM1, ~dustM2, ~dustM3].choose.value