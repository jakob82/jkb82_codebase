from array import *
import itertools

verses = [] 

verses.append(["Caminhava em silêncio, completamente atónito, num gesto poli-enviesado",
            "Caminhava num frenesim electrico, que meta-dielecticamente me ostracizava",
            "Caminhava por um cardápio de faunos, ali no meio dos cipestres, para que incognitamente se foram",
            "Morria, incognito, para lentamente me olvidar, por entre um nigredo infra-circunpescrito"]);

verses.append(["Para que ali, por entre a umbra, e por entre o sopro gélido benzida em mim a esfera do caos",
          "Para que por entre um silêncio incógnito, viesse em mim teu maldito cardapio da lei",
          "Para que por entre um gesto subito, que para lá de mim, subitamente se envieza",
          "Para que por entre o inicio de uma possivel acefaleia pudesse em mim benzer o desterro ultimo da sombra da minha ignorancia"]);

verses.append(["Viesse em mim silêncio intempério que para lá de mim te revigoras, sombra poli-arcânica do fim dos dias",
            "viesse em mim um desterro incognito, que para lá de mim, subitamente se envieza caida em mim a chama da tua flutulência",
            "viesse em mim, um chama arcânica, que subitamente se multiplica e desmultiplica, à sombra do gesto incognito, de um amor que era a lei",
            "e nisto via a sombra revigorada, de um gesto poli-dissidente, que longe de mim, se aliena incognito para lá do luar"]);

verses.append(["que justa e inefacticamente se permuta por entre o pulsar quantico da esquadria do universo",
            "que justa e meta-dissidentemente se envieza para lá da sombra das malditas horas"]);


lines = [line for verse in verses for line in verse]
for verse in itertools.permutations(lines, 4):
	print("".join(verse)) 