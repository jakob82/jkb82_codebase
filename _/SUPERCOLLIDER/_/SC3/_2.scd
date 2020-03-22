(
{SinOsc.ar([600, 610], mul: Blip.ar(rrand(1,10)))}.scope;
{SinOsc.ar([6000, 6100], mul: Blip.ar(rrand(1,10)))}.scope;
{SinOsc.ar([60, 61], mul: Blip.ar(rrand(1,10)))}.scope;
{SinOsc.ar([30, 31], mul: Impulse.ar([10, 10]))}.scope;
{SinOsc.ar([300, 310], mul: Impulse.ar([10, 10]))}.scope;

{Pulse.ar([600, 610], mul: Blip.ar(rrand(1,10)))}.scope;
{Pulse.ar([6000, 6100], mul: Blip.ar(rrand(1,10)))}.scope;
{Pulse.ar([60, 61], mul: Blip.ar(rrand(1,10)))}.scope;
{Pulse.ar([30, 31], mul: Impulse.ar([10, 10]))}.scope;
{Pulse.ar([300, 310], mul: Impulse.ar([10, 10]))}.scope;

{Saw.ar([600, 610], mul: Blip.ar(rrand(1,10)))}.scope;
{Saw.ar([6000, 6100], mul: Blip.ar(rrand(1,10)))}.scope;
{Saw.ar([60, 61], mul: Blip.ar(rrand(1,10)))}.scope;
{Saw.ar([30, 31], mul: Impulse.ar([10, 10]))}.scope;
{Saw.ar([300, 310], mul: Impulse.ar([10, 10]))}.scope;

{GVerb.ar(Saw.ar([6000, 6100], mul: Blip.ar(rrand(1,10))))}.scope;
{GVerb.ar(Saw.ar([6000, 6100], mul: Blip.ar(rrand(1,10))))}.scope;
{GVerb.ar(Pulse.ar([6000, 6100], mul: Blip.ar(rrand(1,10))))}.scope;
{GVerb.ar(SinOsc.ar([6000, 6100], mul: Blip.ar(rrand(1,10))))}.scope;
)