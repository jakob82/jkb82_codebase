from array import *

metabolicRegulators = ["ammonia fungi", "coprinopsis cinerea", "coprinopsis neophlyctidospora", "hebeloma", "aminophilum", "hebeloma radicosoides", "hebeloma radicosum", "hebeloma vinophyllum", "laccaria amethystina", "laccaria bicolor"];
antipiletics = ["phenytoin", "phenobarbital", "lamotrigine", "bromide", "semisodic valproate", "carbamazepina"];
antipsychotic = ["atypical antipsychotics", "azapirones", "tardive dyskinesia", "typical antipsychotics"];
antioxidants = ["dietary antioxidants", "food antioxidants", "fuel antioxidants", "melatonin", "phenol antioxidants", "resveratrol"];

for a in metabolicRegulators:
    for b in antipiletics:
        for c in antipsychotic:
            for d in antioxidants:
                print(a, b, c, d);