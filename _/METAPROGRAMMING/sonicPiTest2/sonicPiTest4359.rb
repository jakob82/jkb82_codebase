use_bpm 128

live_loop :myLoop do
	 use_synth [:dtri, :dpulse, :dsaw].choose
	 play [0, 2, 4, 5, 11].choose + 75 + [0, -12].choose
	 sleep(1.5)
 end