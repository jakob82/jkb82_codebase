(
{SinOsc.ar(30)*EnvGen.ar(Env.perc, Impulse.kr(6))!2*0.06}.scope;{SinOsc.ar(90)*EnvGen.ar(Env.perc, Impulse.kr(6))!2*0.03}.scope;
{SinOsc.ar(3200)*EnvGen.ar(Env.perc, Impulse.kr(3))!2 * 0.003}.scope;
{SinOsc.ar(50)*EnvGen.ar(Env.perc, Impulse.kr(3))!2*0.06}.scope;
{SinOsc.ar(120)*EnvGen.ar(Env.perc, Impulse.kr(3))!2*0.03}.scope; {SinOsc.ar(4000)*EnvGen.ar(Env.perc, Impulse.kr(3))!2 * 0.003}.scope;
{Pulse.ar([440, 444])*0.03}.scope;
{Saw.ar([330, 333])*0.03}.scope;
{Saw.ar([220, 222])*0.03}.scope;
{GVerb.ar(Pulse.ar([440, 444])*0.3, 3, revtime:180, damping: 0.05, drylevel:0, maxroomsize:300)*0.06}.scope; {GVerb.ar(Saw.ar([330, 333])*0.3, 3, revtime: 180, damping: 0.05, drylevel:0, maxroomsize:300)*0.06}.scope; {GVerb.ar(Saw.ar([220, 222])*0.3, 3, revtime: 180, damping: 0.05, drylevel:0, maxroomsize:300)*0.06}.scope;
)