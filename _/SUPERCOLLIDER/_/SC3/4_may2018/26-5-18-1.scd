(
{WhiteNoise.ar*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.03}.scope;
{[Pulse, SinOsc, Saw].choose.ar(rrand(33, 99))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.3}.scope;
{[Pulse, SinOsc, Saw].choose.ar(rrand(800, 16000))*[ChaosGen.allSubclasses, LFDNoise0, LFDNoise1, LFDNoise3, LFDClipNoise, Impulse, Blip, Dust].choose.ar([rrand(1, 30), rrand(1, 30)])*0.3}.scope;
)

