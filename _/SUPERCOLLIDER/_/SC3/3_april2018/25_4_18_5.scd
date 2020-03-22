(
{LeakDC.ar([ChaosGen.allSubclasses.choose.ar(rrand(1, 30)), ChaosGen.allSubclasses.choose.ar(rrand(1, 30))])}.scope;
{LeakDC.ar([Dust.ar(rrand(1, 30)), Dust2.ar(rrand(1, 30))])*0.4}.scope;
{LeakDC.ar([[LFDClipNoise, LFDNoise0, LFDNoise1, LFDNoise3].choose.ar(rrand(1, 30)), [LFDClipNoise, LFDNoise0, LFDNoise1, LFDNoise3].choose.ar(rrand(1, 30))])*0.4}.scope;
{LeakDC.ar([Blip.ar(rrand(1, 30)), Blip.ar(rrand(1, 30))])*0.4}.scope;
)