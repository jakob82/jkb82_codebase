(
{[SinOsc, Saw, Pulse].choose.ar(33, mul: ChaosGen.allSubclasses.choose.ar(Limiter.ar(LeakDC.ar([LFDNoise0, LFDNoise1.kr, LFDNoise3, LFDClipNoise].choose.ar([rrand(1, 30), rrand(1, 30)])))*30))*0.8}.scope;
{[SinOsc, Saw, Pulse].choose.ar(9999, mul: ChaosGen.allSubclasses.choose.ar(Limiter.ar(LeakDC.ar([LFDNoise0, LFDNoise1.kr, LFDNoise3, LFDClipNoise].choose.ar([rrand(1, 30), rrand(1, 30)])))*30))*0.4}.scope;
)

