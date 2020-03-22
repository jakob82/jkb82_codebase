(
{Mix.fill(8,
	{[WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2))),
		WhiteNoise.ar([Dust, Blip, Dust].choose.kr(Line.kr(rrand(0.01, 35), rrand(0.01, 35), 60, mul:0.6, doneAction: 2)))]
})}.scope;
)