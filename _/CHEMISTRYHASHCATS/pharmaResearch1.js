const metabolicRegulators = ["ammonia fungi", "coprinopsis cinerea", "coprinopsis neophlyctidospora", "hebeloma", "aminophilum", "hebeloma radicosoides", "hebeloma radicosum", "hebeloma vinophyllum", "laccaria amethystina", "laccaria bicolor"];
const antipiletics = ["phenytoin", "phenobarbital", "lamotrigine", "bromide", "semisodic valproate", "carbamazepina"];
const antipsychotic = ["atypical antipsychotics", "azapirones", "tardive dyskinesia", "typical antipsychotics"];
const antioxidants = ["dietary antioxidants", "food antioxidants", "fuel antioxidants", "melatonin", "phenol antioxidants", "resveratrol"];



function pharmaResearch1() {

    for (let i1 = 0; i1 < metabolicRegulators.length; i1++) {
        for (let i11 = 0; i11 < 150; i11++) {
            for (let i2 = 0; i2 <antipiletics.length; i2++) {
                for (let i12 = 0; i12 < 150; i12++) {
                    for (let i3 = 0; i3 < antipsychotic.length; i3++) {
                        for (let i13 = 0; i13 < 150; i13++) {
                            for (let i4 = 0; i4 < antioxidants.length; i4++) {
                                for (let i14 = 0; i14 < 150; i14++) {
                                    console.log(
                                        metabolicRegulators[i1]
                                        + antipiletics[i2]
                                        + antipsychotic[i3]
                                        + antioxidants[i4]                                        
                                    );
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return 0;
}
                                                                                          




pharmaResearch1();