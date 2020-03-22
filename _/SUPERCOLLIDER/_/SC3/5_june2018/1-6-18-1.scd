(
Window.closeAll;
w = Window.new("gui", Rect.new(800, 40, 800, 400));
w.front;
w.alwaysOnTop_(true);

~slider1 = Slider(w, Rect.new(20+60*1, 20, 40, 300));
~slider2 = Slider(w, Rect.new(20+60*2, 20, 40, 300));
~slider3 = Slider(w, Rect.new(20+60*3, 20, 40, 300));
~slider4 = Slider(w, Rect.new(20+60*4, 20, 40, 300));

~slider5 = Slider(w, Rect.new(20+60*5, 20, 40, 300));
~slider6 = Slider(w, Rect.new(20+60*6, 20, 40, 300));
~slider7 = Slider(w, Rect.new(20+60*7, 20, 40, 300));
~slider8 = Slider(w, Rect.new(20+60*8, 20, 40, 300));

~slider1.thumbSize_(5);
~slider2.thumbSize_(5);
~slider3.thumbSize_(5);
~slider4.thumbSize_(5);

~slider5.thumbSize_(5);
~slider6.thumbSize_(5);
~slider7.thumbSize_(5);
~slider8.thumbSize_(5);

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

~slider5.action_({
	arg obj;
	obj.value.postln;
});

~slider6.action_({
	arg obj;
	obj.value.postln;
});

~slider7.action_({
	arg obj;
	obj.value.postln;
});

~slider8.action_({
	arg obj;
	obj.value.postln;
});

~slider1.background_(Color.black);
~slider2.background_(Color.black);
~slider3.background_(Color.black);
~slider4.background_(Color.black);

~slider5.background_(Color.black);
~slider6.background_(Color.black);
~slider7.background_(Color.black);
~slider8.background_(Color.black);

w.background_(Color.white);
)