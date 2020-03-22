(
{Pulse.ar([rrand(30, 90), rrand(30, 90)], mul:[Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))), Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)])))])}.scope;

{Pulse.ar([rrand(3000, 9000), rrand(3000, 9000)], mul:[Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)]))), Limiter.ar(LeakDC.ar(ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1, 30)])))])}.scope;
)


// to be continued (...)
// nao percam o proximo episodio, porque nos tambem nao