const nucleicAcidProteins = ["A", "C", "G", "T", "U", "W", "S", "M", "K", "R",
    "Y", "B", "D", "H", "V", "N", "Z"];

const nAPL=nucleicAcidProteins.length;

(function permutateChemicalFormula1() {
    let a, z;
    for (let i = 0; i < Math.pow(nAPL, nAPL); i++) {

        let nAI1=i%nAPL; 
        let nAI2=nucleicAcidProteins.length-i%nAPL; 
        let nAI3=parseInt((nAI1+nAI2)*0.5%nAPL)-1; 
        let nAI4=parseInt((nucleicAcidProteins.length-nAI3%nAPL))+1; 
        let nAI5=parseInt((nAI1+nAI2)*0.5%nAPL)+1; 
        let nAI6=parseInt((nAI1+nAI3)*0.5%nAPL);
        let nAI7=parseInt((nAI2+nAI3)*0.5%nAPL)-1; 
        let nAI8=parseInt((nAI3+nAI4)*0.5%nAPL)+1; 
        let nAI9=parseInt((nAI5+nAI6)*0.5%nAPL); 
        let nAI10=parseInt((nAI7+nAI8)*0.5%nAPL);

        let nAPA = [nAI1, nAI2, nAI3, nAI4, nAI5, nAI6, nAI7, nAI8, nAI9, nAI10];

        let nucleicAcidProteinsSequence1 = 
        [nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], 
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))]];

        let nucleicAcidProteinsSequence2 = 
        [nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], 
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))]];

        let nucleicAcidProteinsSequence3 = 
        [nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], 
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))]];

        let nucleicAcidProteinsSequence4 = 
        [nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], 
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))]];

        let nucleicAcidProteinsSequence5 = 
        [nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], 
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))]];

        let nucleicAcidProteinsSequence6 = 
        [nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], 
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))]];

        let nucleicAcidProteinsSequence7 = 
        [nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], 
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))]];

        let nucleicAcidProteinsSequence8 = 
        [nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], 
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))],
        nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))], nucleicAcidProteins[Math.floor(Math.random() * Math.floor(nucleicAcidProteins.length))]];

        console.log("\n " + nucleicAcidProteinsSequence1 + " " + nucleicAcidProteinsSequence2  + " " + nucleicAcidProteinsSequence3  + " " + nucleicAcidProteinsSequence4
        + " " + nucleicAcidProteinsSequence5  + " " + nucleicAcidProteinsSequence6  + " " + nucleicAcidProteinsSequence7  + " " + nucleicAcidProteinsSequence8);
        console.log(nAPA[4]);
    } return 0;
})();

