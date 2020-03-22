use_bpm 128

live_loop :myLoop do
	 use_synth [:pulse, :saw, :sine].choose
	 play [0, 2, 4, 6, 7, 9, 11].choose + 65 + [0, -24].choose
	 sleep(0.75)
 end