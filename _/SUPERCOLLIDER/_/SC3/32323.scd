(
{SinOsc.ar(3000)*Blip.ar([rrand(0.01, 0.1), rrand(0.01, 0.1)*10])}.scope;
{Pulse.ar(3000)*Blip.ar([rrand(0.01, 0.1), rrand(0.01, 0.1)*10])}.scope;
{SinOsc.ar(30)*Blip.ar([rrand(0.01, 0.1), rrand(0.01, 0.1)*10])}.scope;
{Pulse.ar(30)*Blip.ar([rrand(0.01, 0.1), rrand(0.01, 0.1)*10])}.scope;
{WhiteNoise.ar*Blip.ar([rrand(0.01, 0.1), rrand(0.01, 0.1)*10])}.scope;
{BrownNoise.ar*Blip.ar([rrand(0.01, 0.1), rrand(0.01, 0.1)*10])}.scope;
)