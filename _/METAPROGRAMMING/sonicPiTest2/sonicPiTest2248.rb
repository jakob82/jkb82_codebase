use_bpm 128

live_loop :myLoop do
	 use_synth [:beep, :blade, :chipbass, :chiplead].choose
	 play [0, 2, 3, 5, 7, 9, 10].choose + 65 + [0, -24].choose
	 sleep(0.25)
 end