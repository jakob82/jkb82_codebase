from array import *
import itertools

verses = [] 

verses.append(["\n corro circunperscrito para alem de mim",
			"\n corro meta-evniesado para alem de mim",
			"\n corro observante para alem de mim",
			"\n corro nesse suplicio auterpico para alem de mim",
			"\n meta enubriado para além de mim"]);

verses.append(["\n correndo como se já nada fosse em vão"]);

verses.append(["\n para lentamente em ti ficar",
			"\n para lentamente em ti fazer vencer",
			"\n para lentamente em ti descansar",
			"\n para lentamente em ti repousar"]);

lines = [line for verse in verses for line in verse]
for verse in itertools.permutations(lines, 3):
	print("".join(verse))