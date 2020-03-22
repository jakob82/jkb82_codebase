const technoRiff1 = [1, 1, 1, 1];
const technoRiff2 = [1, 0.5, 0.5, 1, 0.5, 0.5];
const technoRiff3 = [1, 0.5, 0.5, -1, 0.5, 0.5];
const technoRiff4 = [1, -0.5, 0.5, -1, -0.5, 0.5];
const technoRiff5 = [1, -0.5, 0.5, 1, 0.5, -0.5];
const technoRiff6 = [1, -0.5, 0.5, 1, 0.5, -0.5];
const technoRiff7 = [1, 0.5, 0.5, -1, 0.5, -0.5];
const technoRiff8 = [1, 0.5, 0.5, -1, 1];
const technoRiff9 = [1, -0.5, 0.5, -1, 1];
const technoRiff10 = [1, 0.5, 0.5, 0.125, 0.875, 1];
const technoRiff11 = [0.5, 0.5, 0.5, 0.5, 0.125, 0.875, 0.5, 0.5];
const technoRiff12 = [1, 1, 0.125, 0.875, 1];
const technoRiff13 = [1, 1, 0.125, 0.875, 0.5, 0.5];
const technoRiff14 = [1, 0.5, 0.5, 0.125, 0.875, 0.5, 0.5];
const technoRiff15 = [1, 0.5, 0.5, -0.125, 0.875, 0.5, 0.5];
const technoRiff16 = [1, 0.5, 0.5, 0.125, -0.875, 0.5, 0.5];
const technoRiff17 = [1, 0.5, 0.5, 0.125, 0.875, 0.5, 0.5];
const technoRiff18 = [1, 0.5, -0.5, 0.125, 0.875, -0.5, 0.5];
const technoRiff19 = [1, 0.5, -0.5, 0.125, 0.875, -0.5, 0.5];
const technoRiff20 = [1, -0.5, 0.5, -0.125, 0.875, 0.5, 0.5];

function superRhtyhmGenerator() {

    let modulator1=4; let modulator2=3;  let a1=0; let a2=0;

    for(let i=0; i<160000; i++) {

        a1=i%modulator1; a2=i%modulator2; let a3; let a5; let a6; let a7=parseInt(Math.random() * 20);
        if(a1===0 && a2===0) {modulator1+=1; modulator2+=1; modulator1=modulator1%20; modulator2=modulator2%20;}

        switch (a1) {
            case 1: a5=technoRiff1; break; case 2: a5=technoRiff2; break; case 3: a5=technoRiff3; break;
            case 4: a5=technoRiff4; break; case 5: a5=technoRiff5; break; case 6: a5=technoRiff6; break;
            case 7: a5=technoRiff7; break; case 8: a5=technoRiff8; break; case 9: a5=technoRiff9; break;
            case 10: a5=technoRiff10; break; case 11: a5=technoRiff11; break; case 12: a5=technoRiff12; break;
            case 13: a5=technoRiff13; break; case 14: a5=technoRiff14; break; case 15: a5=technoRiff15; break;
            case 16: a5=technoRiff16; break; case 17: a5=technoRiff17; break; case 18: a5=technoRiff18; break;
            case 19: a5=technoRiff19; break; case 20: a5=technoRiff20; break;
        }

        switch (a2) {
            case 1: a6=technoRiff1; break; case 2: a6=technoRiff2; break; case 3: a6=technoRiff3; break;
            case 4: a6=technoRiff4; break; case 5: a6=technoRiff5; break; case 6: a6=technoRiff6; break;
            case 7: a6=technoRiff7; break; case 8: a6=technoRiff8; break; case 9: a6=technoRiff9; break;
            case 10: a6=technoRiff10; break; case 11: a6=technoRiff11; break; case 12: a6=technoRiff12; break;
            case 13: a6=technoRiff13; break; case 14: a6=technoRiff14; break; case 15: a6=technoRiff15; break;
            case 16: a6=technoRiff16; break; case 17: a6=technoRiff17; break; case 18: a6=technoRiff18; break;
            case 19: a6=technoRiff19; break; case 20: a6=technoRiff20; break;
        }

        switch (a7) {
            case 1: a3=technoRiff1; break; case 2: a3=technoRiff2; break; case 3: a3=technoRiff3; break; case 4: a3=technoRiff4; break;
            case 5: a3=technoRiff5; break; case 6: a3=technoRiff6; break; case 7: a3=technoRiff7; break; case 8: a3=technoRiff8; break;
            case 9: a3=technoRiff9; break; case 10: a3=technoRiff10; break; case 11: a3=technoRiff11; break; case 12: a3=technoRiff12; break;
            case 13: a3=technoRiff13; break; case 14: a3=technoRiff14; break; case 15: a3=technoRiff15; break; case 16: a3=technoRiff16; break;
            case 17: a3=technoRiff17; break; case 18: a3=technoRiff18; break; case 19: a3=technoRiff19; break; case 20: a3=technoRiff20; break;
        }

        console.log("myTechnoRiff#" + i + " " + a3 + a6 + a3 + a5); 
        console.log("myVariableTable#" + i + " " + modulator1 + " " + modulator2 + " " + a1 + " " + a2 + " " + a3 + " " + a5 + " " + a6 + " " + a7);

    }

    return 0;

}

superRhtyhmGenerator();