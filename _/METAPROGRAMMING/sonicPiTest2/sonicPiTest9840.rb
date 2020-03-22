use_bpm 128

live_loop :myLoop do
	 use_synth [:pulse, :saw, :sine].choose
	 play [0, 2, 4, 6, 7, 9, 11].choose + 75 + [0, -36, -24, -12, 0, 12, 24].choose
	 sleep(1.5)
 end