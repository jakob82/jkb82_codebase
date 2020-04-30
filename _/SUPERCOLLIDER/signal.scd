(
{SinOsc.ar([364, 363]*2, mul: SinOsc.kr(0.0146))*0.03}.scope;
{Saw.ar([364, 363]*2, mul: Saw.kr(0.0146))*0.03}.scope;
{Pulse.ar([364, 363]*2, mul: Pulse.kr(0.0146))*0.03}.scope;

{SinOsc.ar([364, 363]*0.5, mul: SinOsc.kr(0.0146))*0.03}.scope;
{Saw.ar([364, 363]*0.5, mul: Saw.kr(0.0146))*0.03}.scope;
{Pulse.ar([364, 363]*0.5, mul: Pulse.kr(0.0146))*0.03}.scope;

{SinOsc.ar([364, 363], mul: SinOsc.kr(0.0146))*0.03}.scope;
{Saw.ar([364, 363], mul: Saw.kr(0.0146))*0.03}.scope;
{Pulse.ar([364, 363], mul: Pulse.kr(0.0146))*0.03}.scope;

{Saw.ar([432, 431] * 2, mul: SinOsc.kr(0.0641))*0.03}.scope;
{Pulse.ar([432, 431] * 2, mul: Saw.kr(0.0641))*0.03}.scope;
{SinOsc.ar([432, 431] * 2, mul: Pulse.kr(0.0641))*0.03}.scope;

{Saw.ar([432, 431] * 0.5, mul: SinOsc.kr(0.0641))*0.03}.scope;
{Pulse.ar([432, 431] * 0.5, mul: Saw.kr(0.0641))*0.03}.scope;
{SinOsc.ar([432, 431] * 0.5, mul: Pulse.kr(0.0641))*0.03}.scope;

{Saw.ar([432, 431], mul: SinOsc.kr(0.0641))*0.03}.scope;
{Pulse.ar([432, 431], mul: Saw.kr(0.0641))*0.03}.scope;
{SinOsc.ar([432, 431], mul: Pulse.kr(0.0641))*0.03}.scope;

{Pulse.ar([546, 545] * 2, mul: SinOsc.kr(0.0322))*0.03}.scope;
{Saw.ar([546, 545] * 2, mul: Saw.kr(0.0322))*0.03}.scope;
{SinOsc.ar([546, 545] * 2, mul: Pulse.kr(0.0322))*0.03}.scope;

{Pulse.ar([546, 545] * 0.5, mul: SinOsc.kr(0.0322))*0.03}.scope;
{Saw.ar([546, 545] * 0.5, mul: Saw.kr(0.0322))*0.03}.scope;
{SinOsc.ar([546, 545] * 0.5, mul: Pulse.kr(0.0322))*0.03}.scope;

{Pulse.ar([546, 545], mul: SinOsc.kr(0.0322))*0.03}.scope;
{Saw.ar([546, 545], mul: Saw.kr(0.0322))*0.03}.scope;
{SinOsc.ar([546, 545], mul: Pulse.kr(0.0322))*0.03}.scope;
)

Server.local.makeWindow