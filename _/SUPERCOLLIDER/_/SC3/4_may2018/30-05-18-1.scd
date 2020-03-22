// replace this by your own sounds

(
~buffer1 = Buffer.read(s, Platform.resourceDir +/+ "sounds/luh1m.wav");
~buffer2 = Buffer.read(s, Platform.resourceDir +/+ "sounds/luh7m.wav");
)

(
{Limiter.ar(TGrains.ar(2, Impulse.kr(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 50) * [MouseX.kr(0.1, 10), MouseX.kr(0.1, 10)], ~buffer1.bufnum,ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * [MouseX, MouseY].choose.kr(0.5, 2) **WhiteNoise.ar(ChaosGen.allSubclasses.choose.ar(MouseX.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 2)+0.5*[MouseX.kr(0.5, 2), MouseX.kr(0.5, 2)], ChaosGen.allSubclasses.choose.ar(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60 * [MouseX.kr(0.5, 2), MouseX.kr(0.5, 2)], doneAction: 2)).abs * 4) * BufDur.kr(~buffer1), /*ChaosGen.allSubclasses.choose.ar(MouseY.kr(0.1, 30)).abs * */rrand(0.02, 0.1) * [MouseX.kr(0.1, 2), MouseX.kr(0.1, 2)], WhiteNoise.ar(0.6), 0.1))}.scope;

{Limiter.ar(TGrains.ar(2, Impulse.kr(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 50) * [MouseX.kr(0.1, 10), MouseX.kr(0.1, 10)], ~buffer2.bufnum,ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * [MouseX, MouseY].choose.kr(0.5, 2) **WhiteNoise.ar(ChaosGen.allSubclasses.choose.ar(MouseX.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 2)+0.5*[MouseX.kr(0.5, 2), MouseX.kr(0.5, 2)], ChaosGen.allSubclasses.choose.ar(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60 * [MouseX.kr(0.5, 2), MouseX.kr(0.5, 2)], doneAction: 2)).abs * 4) * BufDur.kr(~buffer2), /*ChaosGen.allSubclasses.choose.ar(MouseY.kr(0.1, 30)).abs * */rrand(0.02, 0.1) * (2 - [MouseX.kr(0.1, 2), MouseX.kr(0.1, 2)]), WhiteNoise.ar(0.6), 1))}.scope;
{Mix.fill(8, {[WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2))), WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2)))]})}.scope;
{(Resonz.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))]) * 8) + (GVerb.ar(Resonz.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))])) * 0.3)*4}.scope;

{(SinOsc.ar([32, 33] * 20)!2)*0.003}.scope;

{(SinOsc.ar([32, 33])!2)*0.4}.scope;
{Limiter.ar(TGrains.ar(2, Impulse.kr(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 50), ~buffer1.bufnum, ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * [MouseX, MouseY].choose.kr(0.5, 2) **WhiteNoise.ar(ChaosGen.allSubclasses.choose.ar(MouseX.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 2)+0.5, ChaosGen.allSubclasses.choose.ar(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 4) * BufDur.kr(~buffer1), /*ChaosGen.allSubclasses.choose.ar(MouseY.kr(0.1, 30)).abs * */rrand(0.01, 0.05), WhiteNoise.ar(0.6), 0.6))}.scope;

{Limiter.ar(TGrains.ar(2, Impulse.kr(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 50), ~buffer2.bufnum, ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * [MouseX, MouseY].choose.kr(0.5, 2) **WhiteNoise.ar(ChaosGen.allSubclasses.choose.ar(MouseX.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 2)+0.5, ChaosGen.allSubclasses.choose.ar(ChaosGen.allSubclasses.choose.ar([MouseX, MouseY].choose.kr(0.1, 30)*XLine.kr(rrand(0.5, 2), rrand(0.01, 30), 60, doneAction: 2)).abs * 4) * BufDur.kr(~buffer1), /*ChaosGen.allSubclasses.choose.ar(MouseY.kr(0.1, 30)).abs * */rrand(0.01, 0.05), WhiteNoise.ar(0.6), 0.6))}.scope;

{SinOsc.ar([ChaosGen.allSubclasses.choose.ar(rrand(1, 30))*20000+12, ChaosGen.allSubclasses.choose.ar(10)*20000+12])*0.01}.scope;

{Mix.fill(8,
	{[WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.06, doneAction: 2))),
		WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.06, doneAction: 2)))]
})}.scope;


play({ Klang.ar(`[ [24.midicps, 24.midicps + 0.123, 24.midicps + 0.322], [0.3, 0.3, 0.3], [3.14, 3.14, 3.14]], 1, 0) * 0.004});
{Limiter.ar(LeakDC.ar(Pulse.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.00006}.scope;
{Limiter.ar(LeakDC.ar(Pulse.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.00006}.scope;
{Limiter.ar(LeakDC.ar(Pulse.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.00006}.scope;
{Limiter.ar(LeakDC.ar(Saw.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.0333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.00006}.scope;
{Limiter.ar(LeakDC.ar(Saw.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.0333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.0006}.scope;
{Limiter.ar(LeakDC.ar(Saw.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.0333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.0006}.scope;
{Limiter.ar(LeakDC.ar(SinOsc.ar([36.midicps, 36.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)])) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.0006}.scope;
{Limiter.ar(LeakDC.ar(SinOsc.ar([73.midicps, 73.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)* 0.0006}.scope;
{Limiter.ar(LeakDC.ar(SinOsc.ar([100.midicps, 120.midicps + 0.123], mul: SinOsc.kr(SinOsc.kr([rrand(0, 0.123), rrand(0, 0.333)]))))) * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2) * 0.0006}.scope;
{Dust.ar(WhiteNoise.ar(3 * Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2)))*0.1!2}.scope;
{Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]* Line.kr(rrand(0.01, 10), rrand(0.01, 10), 60, doneAction:2))))*0.003}.scope;

{[SinOsc, Saw, Pulse].choose.ar(33, mul: ChaosGen.allSubclasses.choose.ar(Limiter.ar(LeakDC.ar([LFDNoise0, LFDNoise1.kr, LFDNoise3, LFDClipNoise].choose.ar([rrand(1, 30), rrand(1, 30)])))*30))*0.008}.scope;
{[SinOsc, Saw, Pulse].choose.ar(9999, mul: ChaosGen.allSubclasses.choose.ar(Limiter.ar(LeakDC.ar([LFDNoise0, LFDNoise1.kr, LFDNoise3, LFDClipNoise].choose.ar([rrand(1, 30), rrand(1, 30)])))*30))*0.004}.scope;
{Resonz.ar([Dust.ar(10), Dust2.ar(10)], bwr: 0.05, mul:1)}.scope;
{Saw.ar([55, 55.1] / 2, mul: 0.01)}.scope;
{SinOsc.ar([55, 55.1], mul: 0.03)}.scope;
{SinOsc.ar([5000, 5100], mul: 0.0003)}.scope;
{SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.03}.scope;
{SinOsc.ar([55, 55.1], mul: 0.03)}.scope;
{SinOsc.ar([5000, 5100], mul: 0.0003)}.scope;
{SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.03}.scope;
{SinOsc.ar([4000, 8000], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.03}.scope;

{Saw.ar([55, 55.1] / 2, mul: 0.1)}.scope;
{SinOsc.ar([WhiteNoise.ar(4000), WhiteNoise.ar(8000)], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.03}.scope;
{SinOsc.ar([4000, 8000], mul: Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))))*0.03}.scope;

{WhiteNoise.ar*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.003}.scope;
{[Pulse, SinOsc, Saw].choose.ar(rrand(33, 99))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.03}.scope;
{[Pulse, SinOsc, Saw].choose.ar(rrand(800, 16000))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.03}.scope;

{LeakDC.ar(Limiter.ar(((WhiteNoise.ar*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1)*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99))*0.3))*0.003))}.scope;
{LeakDC.ar(Limiter.ar(([Pulse, SinOsc, Saw].choose.ar(rrand(33, 99))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99)))*0.03))}.scope;
{LeakDC.ar(Limiter.ar(([Pulse, SinOsc, Saw].choose.ar(rrand(800, 16000))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99)))*0.003))}.scope;



)



Server.local.makeWindow