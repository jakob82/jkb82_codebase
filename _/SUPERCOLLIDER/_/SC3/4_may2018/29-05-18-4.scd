(
{Blip.ar([60, 60.1])*0.2}.scope;
{Blip.ar([3000, 3000.1])*0.2}.scope;
{LeakDC.ar(Limiter.ar(LFDNoise0.ar(10)!2*0.3))}.scope
)