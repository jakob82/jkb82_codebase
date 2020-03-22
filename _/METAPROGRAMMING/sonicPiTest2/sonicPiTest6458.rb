use_bpm 128

live_loop :myLoop do
	 use_synth [:pulse, :saw, :sine].choose
	 play [0, 2, 3, 5, 7, 9, 10].choose + 70 + [0,, -36, 12].choose
	 sleep(1.25)
 end