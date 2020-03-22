const metabolicRegulators = ["ascobolus debadatus", "calocybe leucocephala", "coprinopsis cineria", "coprinopsis echinospora", "coprinopsis neolagopus", "coprinopsis neolagopus", "coprinopsis neoglyctidospora", "coprinopsis phlyctidospora", "coprinopsis stercorea", "cuprinopsis stercorea", "crucispora rhombisperma", "hebeloma luchuense", "hebeloma radicosoides", "hebeloma radicosum", "hebeloma spollatum", "hebeloma vinosophyllum", "laccaria amethystina", "laccaria bicolor", "saganarella tylicor"];

function pharmaResearch1() {
    for (let i1 = 0; i1 < metabolicRegulators.length; i1++) {
        for (let i2 = 0; i2 < metabolicRegulators.length; i2++) {
            for (let i3 = 0; i3 < metabolicRegulators.length; i3++) {
                for (let i4 = 0; i4 < metabolicRegulators.length; i4++) {
                    for (let i5 = 0; i5 < metabolicRegulators.length; i5++) {
                        console.log(
                            metabolicRegulators[i1]
                            + metabolicRegulators[i2]
                            + metabolicRegulators[i3]
                            + metabolicRegulators[i4]
                            + metabolicRegulators[i5]
                        );
                    }
                }
            }
        }
    }
    return 0;
}


pharmaResearch1();