(
~signal1={Mix.fill(16, {[SinOsc, Saw].choose.ar(freq: [33, 32]*Array.fib(10, 1, 1).choose, add: 0, mul: 0.03  * SinOsc.kr(Array.fib(10, 1, 1).choose*0.01))})};
~signal2={Mix.fill(16, {Pulse.ar(freq: [33, 32]*Array.fib(10, 1, 1).choose, width: 1.5  * SinOsc.kr(Array.fib(10, 1, 1).choose*0.01), mul: 0.03  * SinOsc.kr(Array.fib(10, 1, 1).choose*0.3))})};
//*******************************************//
//*******************************************//
~signal1.scope; ~signal2.scope;
)

(
~signal1={Mix.fill(rrand(1, 32), {[SinOsc, Saw].choose.ar(
	freq: [32, 33]*Array.fib(rrand(1, 8), [1, 3, 5].choose, [1, 3, 5].choose).choose, add: 0,
	mul: 0.03  * SinOsc.kr(Array.fib(rrand(1, 13), [1, 3, 5].choose, [1, 3, 5].choose).choose*0.1))
})*0.03};
~signal2={Mix.fill(rrand(1, 32), {Pulse.ar(
	freq: [33, 32]*Array.fib(rrand(1, 8), [1, 3, 5].choose, [1, 3, 5].choose).choose,
	width: 1.5  * SinOsc.kr(Array.fib(rrand(1, 8), [1, 3, 5].choose, [1, 3, 5].choose).choose*0.01,
		mul: 0.03  * SinOsc.kr(Array.fib(rrand(1, 8), [1, 3, 5].choose, [1, 3, 5].choose).choose*0.1)))}
)*0.3};
//*******************************************//
//*******************************************//
~signal1.scope; ~signal2.scope;
)