(
~mySynthesisDefinition = {
	var soundKomponent1_1 = {LeakDC.ar([ChaosGen.allSubclasses.choose.ar(rrand(1, 30)), ChaosGen.allSubclasses.choose.ar(rrand(1, 30))])*6};
	var soundKomponent1_2 = {LeakDC.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))])*6};
	var soundKomponent1_3 = {LeakDC.ar([Blip.ar(rrand(1, 30)), Blip.ar(rrand(1, 30))])*6};

	var summingA = soundKomponent1_1+soundKomponent1_2+soundKomponent1_3;

	var soundKomponent2_1 = {[Resonz.ar(Blip.ar(rrand(0.1, 10)), 63.midicps), Resonz.ar(Blip.ar(rrand(0.1, 10)), 63.midicps)]};
	var soundKomponent2_2 = {[Resonz.ar(Blip.ar(rrand(0.1, 10)), 64.midicps), Resonz.ar(Blip.ar(rrand(0.1, 10)), 64.midicps)]};
	var soundKomponent2_3 = {[Resonz.ar(Blip.ar(rrand(0.1, 10)), 59.midicps), Resonz.ar(Blip.ar(rrand(0.1, 10)), 59.midicps)]};
	var soundKomponent2_4 = {[Resonz.ar(Blip.ar(rrand(0.1, 10)), 56.midicps), Resonz.ar(Blip.ar(rrand(0.1, 10)), 56.midicps)]};
	var soundKomponent2_5 = {[Resonz.ar(Blip.ar(rrand(0.1, 10)), 48.midicps), Resonz.ar(Blip.ar(rrand(0.1, 10)), 48.midicps)]};
	var soundKomponent2_6 = {[Resonz.ar(Blip.ar(rrand(0.1, 10)), 36.midicps), Resonz.ar(Blip.ar(rrand(0.1, 10)), 36.midicps)]};

	var summingB = soundKomponent2_1+soundKomponent2_2+soundKomponent2_3+soundKomponent2_4+soundKomponent2_5+soundKomponent2_6;

	var summingC={
		var freqs, mix, reverbChain;
		freqs = [34, 46, 52, 56, 59, 63, 64, 72, 86, 98].midicps;

		mix = 0.125 * 0.25 * Mix(freqs.collect { |freq|
			[
				SinOsc.ar(freq, rrand(0,1.5), SinOsc.kr(rrand(0.01, 0.333)))
				+ Pulse.ar(freq, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)))
				,
				SinOsc.ar(freq, rrand(0,1.5), SinOsc.kr(rrand(0.01, 0.333)))
				+ Pulse.ar(freq + rrand(-1.0, 1.0), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)))
			]
		});

		reverbChain = GVerb.ar(mix * Blip.kr(rrand(0.01, 0.1)), rrand(1, 300), rrand(1, 30), 0.55, 0.51, 15, -24, -46, -40, mul:0.06);

		Limiter.ar(LeakDC.ar(reverbChain));
	};

	var sinA = {[SinOsc.ar(8000, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 60))), SinOsc.ar(8000, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 60)))]*0.4};
	var sinB= {[SinOsc.ar(30, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))), SinOsc.ar(30, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30)))]*0.8};
	var sinC={[WhiteNoise.ar(mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 15))), WhiteNoise.ar(mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 15)))]*0.02};

	Limiter.ar(LeakDC.ar(summingA+summingB+summingC+sinA+sinB+sinC));
};
)

~mySynthesisDefinitionM={CmdPeriod.run; ~mySynthesisDefinition.scope;}

~mySynthesisDefinitionM.value;

Server.local.makeWindow
