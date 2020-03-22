use_bpm 128

live_loop :myLoop do
	 use_synth [:tb303, :tech_saws, :tri, :beep].choose
	 play [0, 1, 3, 5, 7, 8, 10].choose + 65 + [0, 12].choose
	 sleep(0.25)
 end