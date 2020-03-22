use_bpm 128

live_loop :myLoop do
	 use_synth [:prophet, :pluck, :piano].choose
	 play [0, 2, 4, 5, 7, 9, 11].choose + 65 + [0,, -36, 12].choose
	 sleep(0.75)
 end