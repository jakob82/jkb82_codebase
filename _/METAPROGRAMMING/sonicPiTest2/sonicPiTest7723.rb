use_bpm 128

live_loop :myLoop do
	 use_synth [:pulse, :saw, :sine].choose
	 play [0, 2, 3, 5, 7, 9, 10].choose + 45 + [0, 24].choose
	 sleep(0.5)
 end