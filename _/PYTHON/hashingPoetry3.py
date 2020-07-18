from array import *
import itertools

verses = [] 

verses.append(["\n morro por entre o eclodir das horas num gesto meta-sepulcrar, que urge para alem de mim",
			"\n e meu, e teu, e nosso o suplicio despeito que me leva sempre e agora para alem de mim",
			"\n e meu o gesto nesse suplicio meta magnetico que subitamente nos acolhe",
			"\n e meu, enosso este suplicio, por entre uma espiral atonita e chamas das sombras de gomorra",
			"\n e meu e nosso e vosso o suplicio ardente por entre a sombra desfigurada e o sentido ultimo do caos"]);

verses.append(["\n e ainda assim deambulava perante a sombra do eclodir das horas"]);

verses.append(["\n corria ardentemete para alem de chaves de piramides caiadas para la do sentido da ressurreicao",
			"\n corria ardentemete para alem de chaves de piramides caiadas para la do sentido da re-encarnacao",
			"\n corria ardentemete para alem de chaves de piramides caiadas para la do sentido da transmutacao",
			"\n corria ardentemete para alem de chaves de piramides caiadas para la do sentido da projeccao causal do sentido das horas",
			"\n corria ardentemete para alem de chaves de piramides caiadas para la do sentido de um sopro dissimulado sempre contido em mim para alem de vos"]);

verses.append(["\n A transfiguracao, e um sentido alado de renovacao",
			"\n A transfiguracao, e um sentido alado de meta-ambivalacao",
			"\n A transfiguracao, e um sentido alado de ",
			"\n A transfiguração, e a transmutação que nos revela,",
			"\n A transfiguração, e a transmutação que nos transcende,"]);

verses.append(["\n sempre para la de um sopro calafrio, que para la de mim e nos consente"]);

verses.append(["\n consente a amalgama do destino, consente o sopro do fim das horas",
			"\n consente a amalgama do destino, consente o sopro de uma catarse meta cinetica que longe de nos corre",
			"\n consente a amalgama do destino, consente o sopro do fim das horas, que lentamente se obstrui, inclui e se influi",
			"\n consente a amalgama do destino, consente o sopro do fim das horas, que lentamente se obstrui, e se permeia para la dos prantos da acacia",
			"\n consente a amalgama do destino, consente o sopro do fim das horas, e do sopro do destino"]);

verses.append(["\n contido no sopro da alma que em nos se influi"]);

verses.append(["\n varresse eu neste silencio auterpico, sopro inocuo que para la desta chama aflora",
			"\n varresse eu neste silencio auterpico, sopro inocuo que para la desta humilde catarse sonha, aflora e sente",
			"\n varresse eu neste silencio auterpico, sopro inocuo que para la desta chama se multiplica, ao som de um estravio vidente da esfera do caos",
			"\n varresse eu neste silencio auterpico, sopro inocuo que para la desta chama implora",
			"\n varresse eu neste silencio auterpico, sopro inocuo que para la desta chama se encontra em mim, nos prantos da aurora"]);


lines = [line for verse in verses for line in verse]
for verse in itertools.permutations(lines, 7):
	print("".join(verse))