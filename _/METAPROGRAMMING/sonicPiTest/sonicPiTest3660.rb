live_loop :beep do play [0, 1, 3, 5, 7, 8, 10].choose + 55 + [0, -12].choose sleep(1.5) end