use_bpm 128

live_loop :myLoop do
	 use_synth [:dtri, :dpulse, :dsaw].choose
	 play [0, 2, 3, 5, 7, 9, 10].choose + 50 + [0, -36, -24, -12, 0, 12, 24].choose
	 sleep(0.25)
 end