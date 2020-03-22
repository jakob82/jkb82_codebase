(
{Blip.ar([rrand(30, 90), rrand(30, 90)])*0.2}.scope;
{Blip.ar([rrand(3000, 9000), rrand(3000, 9000)])*0.2}.scope;
{LeakDC.ar(Limiter.ar(LFDNoise0.ar(rrand(1,30))!2*0.3))}.scope;
{GVerb.ar(LeakDC.ar(Limiter.ar(LFDNoise0.ar(rrand(1,30))!2*0.06)))}.scope;

)