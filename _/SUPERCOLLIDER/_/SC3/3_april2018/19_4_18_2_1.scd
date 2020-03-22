(
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

	Out.ar(0, GVerb.ar([(sin1_1+sin2_1+sin3_1+sin4_1+sin5_2+sin5_1+pulse1_1+pulse2_1+pulse3_1+pulse4_1+pulse5_2+pulse5_1)*0.25, (sin1_1+sin2_1+sin3_1+sin4_1+sin6_2+sin6_1+pulse1_1+pulse2_1+pulse3_1+pulse4_1+pulse5_2+pulse5_1)*0.25]*Blip.kr(rrand(0.01, 0.1)), rrand(1, 300), rrand(1, 30), 0.55, 0.51, 15, -24, -46, -40, mul:0.03));

	//=========================================
	//=========================================

    }.scope;
)

Server.local.makeWindow


