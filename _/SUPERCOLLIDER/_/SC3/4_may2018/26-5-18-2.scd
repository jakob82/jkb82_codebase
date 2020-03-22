(
{LeakDC.ar(Limiter.ar(((WhiteNoise.ar*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1)*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99))*0.3))*0.03))}.scope;
{LeakDC.ar(Limiter.ar(([Pulse, SinOsc, Saw].choose.ar(rrand(33, 99))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99)))*0.03))}.scope;
{LeakDC.ar(Limiter.ar(([Pulse, SinOsc, Saw].choose.ar(rrand(800, 16000))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)] * 0.1))**([Pulse, SinOsc, Saw].choose.ar(rrand(0.33, 0.99)))*0.03))}.scope;
)

