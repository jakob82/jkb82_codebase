(
{WhiteNoise.ar*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.03}.scope;
{[Pulse, SinOsc, Saw].choose.ar(rrand(33, 99))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.3}.scope;
{[Pulse, SinOsc, Saw].choose.ar(rrand(800, 16000))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.3}.scope;
{LeakDC.ar(Limiter.ar(((WhiteNoise.ar*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1)*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99))*0.3))*0.03))}.scope;
{LeakDC.ar(Limiter.ar(([Pulse, SinOsc, Saw].choose.ar(rrand(33, 99))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99)))*0.03))}.scope;
{LeakDC.ar(Limiter.ar(([Pulse, SinOsc, Saw].choose.ar(rrand(800, 16000))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99)))*0.03))}.scope;


// *********************************
// *********************************

play({ Klang.ar(`[ [24.midicps, 24.midicps + 0.123, 24.midicps + 0.322], [0.3, 0.3, 0.3], [3.14, 3.14, 3.14]], 1, 0) * 0.04});
{Limiter.ar(LeakDC.ar(Pulse.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.006}.scope;
{Limiter.ar(LeakDC.ar(Pulse.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.006}.scope;
{Limiter.ar(LeakDC.ar(Pulse.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.006}.scope;
{Limiter.ar(LeakDC.ar(Saw.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.006}.scope;
{Limiter.ar(LeakDC.ar(Saw.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.006}.scope;
{Limiter.ar(LeakDC.ar(Saw.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.006}.scope;
{Limiter.ar(LeakDC.ar(SinOsc.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.06}.scope;
{Limiter.ar(LeakDC.ar(SinOsc.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.06}.scope;
{Limiter.ar(LeakDC.ar(SinOsc.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.06}.scope;
{Dust.ar(WhiteNoise.ar(3 * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)))!2}.scope;
{Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]* Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.3}.scope;

// *********************************
// *********************************

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

// *********************************
// *********************************

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

// *********************************
// *********************************

{Mix.fill(8,
	{[WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2))),
		WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2)))]
})}.scope;

// *********************************
// *********************************

{Mix.fill(8, {[WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2))), WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2)))]})}.scope;

// *********************************
// *********************************

{(Resonz.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))]) * 8) + (GVerb.ar(Resonz.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))])) * 0.3)*4}.scope;

{(SinOsc.ar([32, 33] * 20)!2)*0.03}.scope;

{(SinOsc.ar([32, 33])!2)*0.4}.scope;

// *********************************
// *********************************

{

	//=========================================
	//=========================================

	var sin1_1, sin2_1, sin3_1, sin4_1, sin1_2, sin2_2, sin3_2, sin4_2, sin5_2, sin6_2, sin5_1, sin6_1, pulse1_1, pulse2_1, pulse3_1, pulse4_1, pulse1_2, pulse2_2, pulse3_2, pulse4_2, pulse5_2, pulse6_2, pulse5_1, pulse6_1;

	//=========================================
	//=========================================

	sin1_1=SinOsc.ar(56.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));
	sin2_1=SinOsc.ar(59.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01,
0.333)));
	sin3_1=SinOsc.ar(63.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));
	sin4_1=SinOsc.ar(64.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));
	sin5_1=SinOsc.ar(72.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));
	sin6_1=SinOsc.ar(84.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));
	sin1_2=SinOsc.ar(56.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));
	sin2_2=SinOsc.ar(59.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01,
0.333)));
	sin3_2=SinOsc.ar(63.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));
	sin4_2=SinOsc.ar(64.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));
	sin5_2=SinOsc.ar(48.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));
	sin6_2=SinOsc.ar(36.midicps, rrand(0, 1.5), SinOsc.kr(rrand(0.01, 0.333)));

	//=========================================
	//=========================================

	pulse1_1=Pulse.ar(56.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse2_1=Pulse.ar(59.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01,
0.333)));
	pulse3_1=Pulse.ar(63.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse4_1=Pulse.ar(64.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse5_1=Pulse.ar(72.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse6_1=Pulse.ar(84.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse1_2=Pulse.ar(56.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse2_2=Pulse.ar(59.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01,
0.333)));
	pulse3_2=Pulse.ar(63.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse4_2=Pulse.ar(64.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse5_2=Pulse.ar(48.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse6_2=Pulse.ar(36.midicps, width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));

	//=========================================
	//=========================================

	pulse1_1=Pulse.ar(56.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse2_1=Pulse.ar(59.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01,
0.333)));
	pulse3_1=Pulse.ar(63.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse4_1=Pulse.ar(64.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse5_1=Pulse.ar(72.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse6_1=Pulse.ar(84.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse1_2=Pulse.ar(56.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse2_2=Pulse.ar(59.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01,
0.333)));
	pulse3_2=Pulse.ar(63.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse4_2=Pulse.ar(64.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse5_2=Pulse.ar(48.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));
	pulse6_2=Pulse.ar(36.midicps + rrand(-1, 1), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)));

	//=========================================
	//=========================================

	Out.ar(0, [(sin1_1+sin2_1+sin3_1+sin4_1+sin5_2+sin5_1+pulse1_1+pulse2_1+pulse3_1+pulse4_1+pulse5_2+pulse5_1)*0.25, (sin1_1+sin2_1+sin3_1+sin4_1+sin6_2+sin6_1+pulse1_1+pulse2_1+pulse3_1+pulse4_1+pulse5_2+pulse5_1)*0.25]);

	//=========================================
	//=========================================

    }.scope;

	//=========================================
	//=========================================

{
	var sound=Mix.fill(n: rrand(1, 2),
		function: {[Pulse.ar(freq: 4400*4,
			width: WhiteNoise.ar(1),
			mul: Blip.ar(rrand(0.01, 30))),
		Pulse.ar(freq: 4400*4,
			width: WhiteNoise.ar(1),
			mul: Blip.ar(rrand(0.01, 30)))]});
	var rev=GVerb.ar(in: sound);
	Out.ar(bus: 0, channelsArray: sound+(rev * 0.06));
}.scope;
{
	var sound=Mix.fill(n: rrand(1, 3),
		function: {[SinOsc.ar(freq: 30*4,
			mul: Blip.ar(rrand(0.01, 30))),
		SinOsc.ar(freq: 30*4,
			mul: Blip.ar(rrand(0.01, 30)))]});
	//var rev=GVerb.ar(in: sound);
	Out.ar(bus: 0, channelsArray: sound);
}.scope;
{
	var sound=Mix.fill(n: 1,
		function: {[WhiteNoise.ar(mul: Blip.ar(rrand(0.01, 30))),
		WhiteNoise.ar(mul: Blip.ar(rrand(0.01, 30)))]});
	//var rev=GVerb.ar(in: sound);
	Out.ar(bus: 0, channelsArray: sound * 0.4);
}.scope;
{
	var sound=Mix.fill(n: rrand(1, 2),
		function: {[Pulse.ar(freq: 33,
			width: [[SinOsc, LFDNoise0, LFDNoise3].choose.kr(rrand(1, 30)), ChaosGen.allSubclasses.choose.ar(rrand(1, 30))].choose,
			mul: SinOsc.kr(rrand(0.01, 3))),
		Pulse.ar(freq: 4400*4,
			width: [[SinOsc, LFDNoise0, LFDNoise3].choose.kr(rrand(1, 30)), ChaosGen.allSubclasses.choose.ar(rrand(1, 30))].choose,
				mul: SinOsc.kr(rrand(0.01, 3)))]});
	var rev=GVerb.ar(in: sound);
	Out.ar(bus: 0, channelsArray: (sound+(rev * 0.06))*0.1);
}.scope;

	//=========================================
	//=========================================

)



