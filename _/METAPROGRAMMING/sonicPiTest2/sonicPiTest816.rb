use_bpm 128

live_loop :myLoop do
	 use_synth [:prophet, :pluck, :piano].choose
	 play [0, 2, 4, 6, 8].choose + 60 + [0, 12].choose
	 sleep(1.25)
 end