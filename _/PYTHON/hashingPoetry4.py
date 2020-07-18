from array import *
import itertools

verses = [] 

verses.append(["\n caminho vertiginosamente por entre os prantos da acácia"]);

verses.append(["\n É meu e teu este tenebroso suspirar, que nos veda, que nos eleva",
            "\n É minha esta súbita ansia, que no faz enfim, quase cortar a respiração para lá do fim",
            "\n É meu este cálice, por entre um infinito cárcere, que nos faz morrer em glória",
            "\n Quando jamais em mim me feixe, jamais, em mim me olho, e subitamente corro, caio e finjo"]);

verses.append(["\n e que nos faz transpira, por entre os desígnios da loucura"]);

verses.append(["\n os designios do amor, e os designios da transfiguração",
            "\n os designios do amor, e o designios da transmutação da mente",
            "\n os designios do amor, e o designios da transmutação do corpo",
            "\n os designios do amor, e o designios da transmutação do espirito",
            "\n os designios do amor, e o designios da transmutação da matéria"]);

verses.append(["\n A transfiguração, e a transmutação que nos reúne,",
            "\n A transfiguração, e a transmutação que nos mantém,",
            "\n A transfiguração, e a transmutação que nos veda,",
            "\n A transfiguração, e a transmutação que nos revela,",
            "\n A transfiguração, e a transmutação que nos transcende"]);

verses.append(["\n Necrose última, do poente, da acácia, e da aurora,"]);

verses.append(["\n para que para lá do fim, para lá de mim, sempre no fim",
            "\n para que para lá do fim, para lá de mim, sempre para lá de mim",
            "\n para que para lá do fim, para lá de mim, sempre no poente",
            "\n para que para lá do fim, para lá de mim, sempre na acácia",
            "\n para que para lá do fim, para lá de mim, sempre na chama dissidente"]);

verses.append(["\n contido em nós, e nessa chama ausente, pudesse-mos"]);

verses.append(["\n enfirm, velar, revelar e transcender o propósito que me transcende",
            "\n enfirm, velar, revelar e transcender o propósito que me mata",
            "\n enfirm, velar, revelar e transcender o propósito que me cura",
            "\n enfirm, velar, revelar e transcender o propósito que me revela",
            "\n enfirm, velar, revelar e transcender o propósito que me consente"]);

verses.append(["\n último da nossa condição - um sentido revelado sempre em mim",
                "\n último da nossa condição - um sentido revelado para lá de ti",
                "\n último da nossa condição - um sentido revelado para lá de nós",
                "\n último da nossa condição - um sentido revelado para lá do abismo",
                "\n último da nossa condição - um sentido revelado para lá da sombra"]);

lines = [line for verse in verses for line in verse]
for verse in itertools.permutations(lines, 10):
	print("".join(verse))