(
{[Pulse.ar(60.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25), Pulse.ar(60.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25)]}.scope;
{[Pulse.ar(61.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25), Pulse.ar(61.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25)]}.scope;
{[Pulse.ar(66.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25), Pulse.ar(66.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25)]}.scope;
{[Pulse.ar(67.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25), Pulse.ar(67.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25)]}.scope;
{[Pulse.ar(48.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25), Pulse.ar(48.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25)]}.scope;
{[Pulse.ar(36.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25), Pulse.ar(36.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25)]}.scope;
{[Pulse.ar(24.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25), Pulse.ar(24.midicps, SinOsc.kr(rrand(0.01, 0.1)), mul:0.25)]}.scope;
{[SinOsc.ar(24.midicps, mul:0.25), SinOsc.ar(24.midicps, 0.25)]}.scope;
)

Server.local.makeWindow;
