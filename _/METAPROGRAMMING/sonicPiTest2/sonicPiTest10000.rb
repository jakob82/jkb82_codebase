use_bpm 128

live_loop :myLoop do
	 use_synth :blade
	 play [0, 2, 4, 5, 11].choose + undefined + undefined.choose
	 sleep(0.75)
	 use_synth :beep
	 play [0, 2, 4, 5, 11].choose + undefined + undefined.choose
	 sleep(0.75)
	 use_synth :beep
	 play [0, 2, 4, 5, 11].choose + undefined + undefined.choose
	 sleep(0.75)
	 use_synth :tb303
	 play [0, 2, 4, 5, 11].choose + undefined + undefined.choose
	 sleep(0.75)
	 use_synth :tech_saws
	 play [0, 2, 4, 5, 11].choose + undefined + undefined.choose
	 sleep(0.75)
	 use_synth :supersaw
	 play [0, 2, 4, 5, 11].choose + undefined + undefined.choose
	 sleep(0.75)
	 use_synth :square
	 play [0, 2, 4, 5, 11].choose + undefined + undefined.choose
	 sleep(0.75)
 end