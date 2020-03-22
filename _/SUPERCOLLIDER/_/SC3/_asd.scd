(
/*

{Saw.ar([60, 60], mul: 0.06)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([600, 600],mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([6000, 60000],mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([60, 60], mul: 0.06)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([600, 600],mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([6000, 60000],mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([60, 60], mul: 0.06)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([600, 600],mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([6000, 60000],mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([60, 60]*3.14, mul: 0.06)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([600, 600]*3.14,mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([6000, 60000]*3.14,mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([60, 60]*3.14, mul: 0.06)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([600, 600]*3.14,mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([6000, 60000]*3.14,mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([60, 60]*3.14, mul: 0.06)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([600, 600]*3.14,mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([6000, 60000]*3.14,mul:0.03)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;

*/

{Pulse.ar([60, 61]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Saw.ar([60, 61]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{SinOsc.ar([60, 61]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([60, 61]*rrand(0.97, 1.03)*3.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Saw.ar([60, 61]*rrand(0.97, 1.03)*3.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{SinOsc.ar([60, 61]*rrand(0.97, 1.03)*3.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;

{Pulse.ar([60, 61]*rrand(0.97, 1.03)*11.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Saw.ar([60, 61]*rrand(0.97, 1.03)*11.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{SinOsc.ar([60, 61]*rrand(0.97, 1.03)*11.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;

{Pulse.ar([60, 61]*rrand(0.97, 1.03)*21.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Saw.ar([60, 61]*rrand(0.97, 1.03)*21.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{SinOsc.ar([60, 61]*rrand(0.97, 1.03)*21.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;

{SinOsc.ar([52, 53], mul: 0.00003)*0.01}.scope;
{SinOsc.ar([152, 153], mul: 0.00003)*0.01}.scope;
{SinOsc.ar([1152, 1153], mul: 0.00003)*0.01}.scope;
{SinOsc.ar([11152, 11153], mul: 0.00003)*0.01}.scope;


{Pulse.ar([60, 61]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([60, 61]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([60, 61]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([60, 61]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([60, 61]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;

{Pulse.ar([30, 31]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03), SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;

{Pulse.ar([30, 31]*rrand(0.97, 1.03)*3.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*3.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*3.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*3.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*3.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;

{Pulse.ar([30, 31]*rrand(0.97, 1.03)*7.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*7.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*7.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*7.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*7.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;


{Pulse.ar([30, 31]*rrand(0.97, 1.03)*11.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*11.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*11.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*11.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*11.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;

{Pulse.ar([30, 31]*rrand(0.97, 1.03)*13.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*13.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*13.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*13.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*13.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;

{Pulse.ar([30, 31]*rrand(0.97, 1.03)*21.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*21.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*21.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*21.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;
{Pulse.ar([30, 31]*rrand(0.97, 1.03)*21.14, SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), 0.00003)*0.01}.scope;

{Mix.fill(128, {[SinOsc, Pulse, Saw].choose.ar(freq: [32, 33]*rrand(0.97, 1.03)*[21.14, 13.14, 11.14, 3.14].choose, width: SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), mul:0.00003)})*0.01}.scope;

{Mix.fill(128, {[SinOsc, Pulse, Saw].choose.ar(freq: [98, 99]*rrand(0.97, 1.03)*[21.14, 13.14, 11.14, 3.14].choose, width: SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), mul:0.00003)})*0.01}.scope;
{Mix.fill(128, {[SinOsc, Pulse, Saw].choose.ar(freq: [55, 56]*rrand(0.97, 1.03)*[21.14, 13.14, 11.14, 3.14].choose, width: SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), mul:0.00003)})*0.01}.scope;

{Pulse.ar([30, 31], SinOsc.kr(0.1, mul: 0.00015), 0.1)*0.01}.scope;
{Pulse.ar([60, 61], SinOsc.kr(0.1, mul: 0.00015), 0.1)*0.01}.scope;
{Pulse.ar([60, 61], SinOsc.kr(0.1, mul: 0.00015), Blip.ar([10, 10.1]))*0.01}.scope;
)
(
{Mix.fill(128, {[SinOsc, Pulse, Saw].choose.ar(freq: [32, 33]*rrand(0.97, 1.03)*[21.14, 13.14, 11.14, 3.14].choose, width: SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), mul:0.0003)})}.scope;
{Mix.fill(128, {[SinOsc, Pulse, Saw].choose.ar(freq: [98, 99]*rrand(0.97, 1.03)*[21.14, 13.14, 11.14, 3.14].choose, width: SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), mul:0.0003)})}.scope;
{Mix.fill(128, {[SinOsc, Pulse, Saw].choose.ar(freq: [55, 56]*rrand(0.97, 1.03)*[21.14, 13.14, 11.14, 3.14].choose, width: SinOsc.kr([rrand(0.01, 0.1), rrand(0.01, 0.1)*10], 0, 1.5), mul:0.0003)})}.scope;
)

(
{Saw.ar([60, 60], mul: 0.0006)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([600, 600],mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([6000, 60000],mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([60, 60], mul: 0.0006)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([600, 600],mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([6000, 60000],mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([60, 60], mul: 0.0006)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([600, 600],mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([6000, 60000],mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([60, 60]*3.14, mul: 0.0006)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([600, 600]*3.14,mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Saw.ar([6000, 60000]*3.14,mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([60, 60]*3.14, mul: 0.0006)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([600, 600]*3.14,mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{Pulse.ar([6000, 60000]*3.14,mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([60, 60]*3.14, mul: 0.0006)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([600, 600]*3.14,mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;
{SinOsc.ar([6000, 60000]*3.14,mul:0.0003)*ChaosGen.allSubclasses.choose.ar(rrand(1, 15)!2)}.scope;

)

(
{Pulse.ar([30, 31], SinOsc.kr(0.1, mul: 0.015), 0.1)}.scope;
{Pulse.ar([60, 61], SinOsc.kr(0.1, mul: 0.015), 0.1)}.scope;
{Pulse.ar([60, 61], SinOsc.kr(0.1, mul: 0.015), Blip.ar([10, 10.1]))}.scope;
)

