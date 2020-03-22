use_bpm 128

live_loop :myLoop do
	 use_synth [:prophet, :pluck, :piano].choose
	 play [0, 2, 4, 6, 8].choose + 45 + [0, -36].choose
	 sleep(0.125)
 end