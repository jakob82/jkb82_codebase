const technoRiff1 = [0.25, 0.25, 0.5, 1/3, 1/3, 1/3];
const technoRiff2 = [1, 0.25, 0.25, 0.25, 0.25, 1,  0.25, 0.25, 0.25, 0.25];
const technoRiff3 = [1, 0.25, -0.25, -0.25, 0.25, 1,  -0.25, 0.25, 0.25, -0.25];
const technoRiff4 = [1, -0.5, 0.5, -1/3, -1/3, 1/3, -0.5, 0.5];

function superRhtyhmGenerator() {

    let modulator1=4; let modulator2=3;  let a1=0; let a2=0;

    for(let i=0; i<160000; i++) {

        a1=i%modulator1; a2=i%modulator2; let a3; let a5; let a6; let a7=parseInt(Math.random() * 20);
        if(a1===0 && a2===0) {modulator1+=1; modulator2+=1; modulator1=modulator1%20; modulator2=modulator2%20;}

        switch (a1) {
            case 1: a5=technoRiff1; break; case 2: a5=technoRiff2; break; case 3: a5=technoRiff3; break;
            case 4: a5=technoRiff4; break;         }

        switch (a2) {
            case 1: a5=technoRiff1; break; case 2: a5=technoRiff2; break; case 3: a5=technoRiff3; break;
            case 4: a5=technoRiff4; break;         }

        switch (a7) {
            case 1: a5=technoRiff1; break; case 2: a5=technoRiff2; break; case 3: a5=technoRiff3; break;
            case 4: a5=technoRiff4; break;         }

        console.log("myTechnoRiff#" + i + " " + a3 + a6 + a3 + a5); 
        console.log("myVariableTable#" + i + " " + modulator1 + " " + modulator2 + " " + a1 + " " + a2 + " " + a3 + " " + a5 + " " + a6 + " " + a7);

    }

    return 0;

}

superRhtyhmGenerator();