(
{(Resonz.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))]) * 8) + (GVerb.ar(Resonz.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))])) * 0.3)*4}.scope;

{(SinOsc.ar([32, 33] * 20)!2)*0.03}.scope;

{(SinOsc.ar([32, 33])!2)*0.4}.scope;
)