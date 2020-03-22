use_bpm 128

live_loop :myLoop do
	 use_synth [:dtri, :dpulse, :dsaw].choose
	 play [0, 2, 4, 5, 11].choose + 70 + [0, -36, -24, -12, 0, 12, 24].choose
	 sleep(1.25)
 end