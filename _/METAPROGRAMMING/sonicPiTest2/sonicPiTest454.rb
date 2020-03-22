use_bpm 128

live_loop :myLoop do
	 use_synth [:dtri, :dpulse, :dsaw].choose
	 play [0, 2, 4, 5, 11].choose + 80 + [0, 24].choose
	 sleep(0.125)
 end