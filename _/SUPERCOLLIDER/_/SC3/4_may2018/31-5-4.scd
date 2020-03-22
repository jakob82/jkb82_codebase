(
Window.closeAll;
w = Window.new("gui", Rect.new(800, 40, 800, 400));
w.front;
w.alwaysOnTop_(true);

~slider1 = Slider(w, Rect.new(20+60*1, 20, 40, 300));
~slider2 = Slider(w, Rect.new(20+60*2, 20, 40, 300));
~slider3 = Slider(w, Rect.new(20+60*3, 20, 40, 300));
~slider4 = Slider(w, Rect.new(20+60*4, 20, 40, 300));

~slider1.thumbSize_(5);
~slider2.thumbSize_(5);
~slider3.thumbSize_(5);
~slider4.thumbSize_(5);

~slider1.action_({
	arg obj;
	if(
		x.isPlaying,
		{var cf = obj.value.linexp(0, 1, 33, 4000).postln;
			x.set(\freq, cf);}
	);
});

~slider2.action_({
	arg obj;
	//obj.value.postln;
	var ph = obj.value.linexp(0, 1, 33, 4000).postln;
	x.set(\phase, ph);

});

~slider3.action_({
	arg obj;
	//obj.value.postln;
	var amplitude=obj.value.linexp(0, 1, 0, 0.3).postln;
	x.set(\amp, amplitude);
});

~slider4.action_({
	arg obj;
	obj.value.postln;
});

~slider1.background_(Color.black);
~slider2.background_(Color.black);
~slider3.background_(Color.black);
~slider4.background_(Color.black);


~button1 = Button(w, Rect.new(20+60*6, 20, 300, 300));
~button1.states_([
	["OFF", Color.white, Color.black],
	["ON", Color.black, Color.white]]);

~button1.font_(Font("Futura", 32));
~button1.action_({
	arg obj;
	if(
		obj.value==1;
		{
			x=Synth.new(
				\sine,
				[
					\freq, ~slider1.value.linexp(0,1, 33, 4000),
					\phase, ~slider2.value.linexp(0,1, 0, 1.5),
					\mul, ~slider3.value.linexp(0,1, 0, 0.3)
				]
			).register;
		},

		{x.free};
	);
});

~knob=Knob(w, Rect.new(20+60*5, 20, 40, 40));
~knob.background_(Color.black);
~knob.color(Color.white);

~knob2=Knob(w, Rect.new(20+60*5, 20+60*1, 40, 40));
~knob2.background_(Color.black);
~knob2.color(Color.white);

~knob3=Knob(w, Rect.new(20+60*5, 20+60*2, 40, 40));
~knob3.background_(Color.black);
~knob3.color(Color.white);

~knob4=Knob(w, Rect.new(20+60*5, 20+60*3, 40, 40));
~knob4.background_(Color.black);
~knob4.color(Color.white);

w.background_(Color.white);
)



(
SynthDef.new(\sine, {|freq=400, mul=0.3, phase=0|
	Out.ar(0, SinOsc.ar(freq, phase, mul)!2);
}).add;
)

x=Synth.new(\sine);
x.set(\freq, 60,  \phase, 0, \mul, 0.3);
x.set(\freq, 400,  \phase, 0, \mul, 0.3);
x.set(\freq, 4000,  \phase, 0, \mul, 0.3);