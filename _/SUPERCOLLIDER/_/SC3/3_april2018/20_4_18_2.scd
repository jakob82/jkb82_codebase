(
{
var soundKomponent1 = {LeakDC.ar([ChaosGen.allSubclasses.choose.ar(rrand(1, 30)), ChaosGen.allSubclasses.choose.ar(rrand(1, 30))])*6};
var soundKomponent2 = {LeakDC.ar([Dust.ar(rrand(1, 30)), Dust.ar(rrand(1, 30))])*6};
var soundKomponent3 = {LeakDC.ar([Blip.ar(rrand(1, 30)), Blip.ar(rrand(1, 30))])*6};
var summing = soundKomponent1+soundKomponent2+soundKomponent3;
Out.ar(0, Limiter.ar(summing));
}.scope
)