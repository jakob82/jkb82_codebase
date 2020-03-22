(
~cena={
var u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11, u12, u13, u14, u15, u16, u17, u18, u19, u20, u21, u22, u23, u24, u25, u26, u27, u28, u29, u30, u31, u32, u33, u34, u35, u36, u37, u38, u39;

u1=Mix.fill(8, {[WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2))), WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2)))]});
u2=(Resonz.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))]) * 8) + (GVerb.ar(Resonz.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))])) * 0.3)*4;

u3=(SinOsc.ar([32, 33] * 20)!2)*0.003;

u4=(SinOsc.ar([32, 33])!2)*0.4;
u5=Limiter.ar(TGrains.ar(2, Impulse.kr(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 50), ~buffer1.bufnum, u5=ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * [MouseX, MouseY].choose.kr(0.5, 2) **WhiteNoise.ar(ChaosGen.allSubclasses.choose.ar(MouseX.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 2)+0.5, ChaosGen.allSubclasses.choose.ar(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 4) * BufDur.kr(~buffer1), rrand(0.01, 0.05), WhiteNoise.ar(0.6), 0.6));
	u6=Limiter.ar(TGrains.ar(2, Impulse.kr(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 50), ~buffer2.bufnum, ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * [MouseX, MouseY].choose.kr(0.5, 2) **WhiteNoise.ar(ChaosGen.allSubclasses.choose.ar(MouseX.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 2)+0.5, ChaosGen.allSubclasses.choose.ar(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 4) * BufDur.kr(~buffer1), rrand(0.01, 0.05), WhiteNoise.ar(0.6), 0.6));
u7=SinOsc.ar([ChaosGen.allSubclasses.choose.ar(rrand(1, 30))*20000+12, ChaosGen.allSubclasses.choose.ar(10)*20000+12])*0.1;
u8=Mix.fill(8,{[WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2))),WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2)))]});

u10=Limiter.ar(LeakDC.ar(Pulse.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.0006;

u11=Limiter.ar(LeakDC.ar(Pulse.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.0006;
u12=Limiter.ar(LeakDC.ar(Pulse.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.0006;
u13=Limiter.ar(LeakDC.ar(Saw.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.0006;
u14=Limiter.ar(LeakDC.ar(Saw.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.0006;
u15=Limiter.ar(LeakDC.ar(Saw.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.0006;
u16=Limiter.ar(LeakDC.ar(SinOsc.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.006;
u17=Limiter.ar(LeakDC.ar(SinOsc.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.006;
u18=Limiter.ar(LeakDC.ar(SinOsc.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.006;
u19=Dust.ar(WhiteNoise.ar(3 * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)))!2;
u20=Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]* Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.03;
u21=[SinOsc, Saw, Pulse].choose.ar(33, mul: ChaosGen.allSubclasses.choose.ar(Limiter.ar(LeakDC.ar([LFDNoise0, LFDNoise1.kr, LFDNoise3, LFDClipNoise].choose.ar([rrand(1, 30), rrand(1, 30)])))*30))*0.08;
u22=[SinOsc, Saw, Pulse].choose.ar(9999, mul: ChaosGen.allSubclasses.choose.ar(Limiter.ar(LeakDC.ar([LFDNoise0, LFDNoise1.kr, LFDNoise3, LFDClipNoise].choose.ar([rrand(1, 30), rrand(1, 30)])))*30))*0.04;
Resonz.ar([Dust.ar(10), Dust2.ar(10)], bwr: 0.05, mul:100);
u23=Saw.ar([55, 55.1] / 2, mul: 0.1);
u24=SinOsc.ar([55, 55.1], mul: 0.3);
u25=SinOsc.ar([5000, 5100], mul: 0.003);
u26=SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: u27=Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3;
u28=SinOsc.ar([55, 55.1], mul: 0.3);
u29=SinOsc.ar([5000, 5100], mul: 0.003);
SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3;
u30=SinOsc.ar([4000, 8000], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3;

u31=Saw.ar([55, 55.1] / 2, mul: 0.1);
u32=SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3;
u33=SinOsc.ar([4000, 8000], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.3;

u34=WhiteNoise.ar*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.03;
u35=[Pulse, SinOsc, Saw].choose.ar(rrand(33, 99))*[LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.3;
u36=[Pulse, SinOsc, Saw].choose.ar(rrand(800, 16000))*[LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.3;

u37=LeakDC.ar(Limiter.ar(((WhiteNoise.ar*[LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1)*[LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99))*0.3))*0.03));
u38=LeakDC.ar(Limiter.ar(([Pulse, SinOsc, Saw].choose.ar(rrand(33, 99))*[LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99)))*0.03));
u39=LeakDC.ar(Limiter.ar(([Pulse, SinOsc, Saw].choose.ar(rrand(800, 16000))*[LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99)))*0.03));
	(u1+u2+u3+u4+u5+u6+u7+u8+u10+u11+u12+u13+u14+u15+u16+u17+u18+u19+u20)*0.2;
};

)

~cenaM={CmdPeriod.run;~cena.scope;}

~cenaM.value