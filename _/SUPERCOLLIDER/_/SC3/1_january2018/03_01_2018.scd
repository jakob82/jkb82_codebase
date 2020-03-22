(
~mySynthDef={Mix.fill(4, {Mix.new([SinOsc.ar([22.5, 22.5137] * rrand(0.8, 1.2), mul:0.3), SinOsc.ar([22.5, 22.5137] * rrand(0.8, 1.2) * 40, mul:0.03), SinOsc.ar([22.5, 22.5137] * rrand(0.8, 1.2) * 80, mul:0.003), SinOsc.ar([22.5, 22.5137] * rrand(0.8, 1.2) * 150, mul:0.003)])}) * 0.3};
)

~mySynthDefM={CmdPeriod.run;~mySynthDef.scope;}

~mySynthDefM.value