(
{
~a={SinOsc.ar([22.5, 23], mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))* 0.3)};
~b={SinOsc.ar([22.5, 23], mul: 0.3)};
~c={SinOsc.ar([22.5, 23]*400, mul: ChaosGen.allSubclasses.choose.ar(rrand(1, 30))* 0.03)};
~d={SinOsc.ar([22.5, 23]*400, mul: 0.03)};
Out.ar(0, ~a+~b+~c+~d);
}.scope
)