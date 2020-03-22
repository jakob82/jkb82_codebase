use_bpm 128

live_loop :myLoop do
	 use_synth [:beep, :blade, :chipbass, :chiplead].choose
	 play [0, 2, 4, 6, 8].choose + 70 + [0, -24].choose
	 sleep(0.5)
 end