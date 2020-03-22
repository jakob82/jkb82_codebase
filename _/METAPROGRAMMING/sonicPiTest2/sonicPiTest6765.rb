use_bpm 128

live_loop :myLoop do
	 use_synth [:tb303, :tech_saws, :tri, :beep].choose
	 play [0, 2, 4, 5, 7, 9, 11].choose + 75 + [0, 12].choose
	 sleep(0.75)
 end