from array import *

metabolicRegulators = ["ascobolus debadatus", "calocybe leucocephala", "coprinopsis cineria", "coprinopsis echinospora", "coprinopsis neolagopus", "coprinopsis neolagopus", "coprinopsis neoglyctidospora", "coprinopsis phlyctidospora", "coprinopsis stercorea", "cuprinopsis stercorea", "crucispora rhombisperma", "hebeloma luchuense", "hebeloma radicosoides", "hebeloma radicosum", "hebeloma spollatum", "hebeloma vinosophyllum", "laccaria amethystina", "laccaria bicolor", "saganarella tylicor"];

for a in metabolicRegulators:
    for b in metabolicRegulators:
        for c in metabolicRegulators:
            for d in metabolicRegulators:
                print(a, b, c, d)