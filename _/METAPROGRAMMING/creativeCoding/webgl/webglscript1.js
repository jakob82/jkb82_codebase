let fs = require('fs');
const myValues1 = [32, 33, 55, 90, 99, 150, 322, 333, 505, 666, 606, 707, 808, 909];
const myValues2 = [3.1456, 3.1456 * 0.5, 1, 2, 3, 5, 7, 8, 11 * 0.1, 13 * 0.1, 21 * 0.1];
let iterationArray = [0, 0]; let range = 0;
let permutationIndexA = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let permutationIndexB = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let textBlock = ["<!DOCTYPE html><html ><head></meta>title>Canvas Particle System Experiment</title><script src=" + "https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" + "type=" + "text/javascript"+"></script><link rel=" + "stylesheet" + "href=" + "https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" + "<link rel=" + "stylesheet" + "href=" + "css/style.css" + "></head><body><canvas id=" + "c" + ">Upgrade yo' browsa!</canvas><script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src=" + "js/index.js" + "></script><script>"];
let iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

function hashingProceduralScriptGeneration() {
    for (let i1 = 0; i1 < 10000; i1++) {
        iterationArray[0] = i1; var iterationArrayIt = i1 % myValues2.length; if (iterationArrayIt == 0) iterationArray[1] += 1;
        range++; let htmlScriptName = ["htmlScript" + range + ".html"];
        console.log(htmlScriptName, "utf-8");
        textBlock = ["<!DOCTYPE html><html ><head></meta>title>Canvas Particle System Experiment</title><script src=" + "https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" + "type=" + "text/javascript"+"></script><link rel=" + "stylesheet" + "href=" + "https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" + "<link rel=" + "stylesheet" + "href=" + "css/style.css" + "></head><body><canvas id=" + "c" + ">Upgrade yo' browsa!</canvas><script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src=" + "js/index.js" + "></script><script>"];
        textBlock2 = ["var a = document.getElementById('c'), c = a.getContext('2d'), w = a.width = window.innerWidth, h = a.height = window.innerHeight, area = w * h, particleNum = " + permutationIndexA[0] + ", ANIMATION; var particles = []; function Particle(i) { this.id = i; this.hue =  rand( + " + permutationIndexA[1] + ", 0, 1); this.active = false; }"];
        textBlock4 = ["Particle.prototype.draw = function() {this.active = true; this.x += this.vx; this.y += this.vy; this.vy += this.gravity; this.hue -= 0.5; this.r = Math.abs(this.r - .05); c.beginPath(); c.arc(this.x, this.y, this.r, 0, 2 * Math.PI, false); c.fillStyle = " + "hsla(" + "this.hue" + ",100%,50%,1)" + "; c.fill(); if(this.r <= .05) { this.active = false;}};"];
        textBlock5 = ["function drawScene() {c.fillStyle = " + "black" + "; c.fillRect(0,0,w,h); for(var i = 0; i < particles.length; i++) { if(particles[i].active === true) { particles[i].draw(); } else { particles[i].build();}} ANIMATION = requestAnimationFrame(drawScene);}"];
        textBlock6 = ["function initCanvas() {var s = getComputedStyle(a); if(particles.length) { particles = []; cancelAnimationFrame(ANIMATION); ANIMATION; console.log(ANIMATION);} w = a.width = window.innerWidth; h = a.height = window.innerHeight; for(var i = 0; i < particleNum; i++) { particles.push(new Particle(i)); drawScene(); console.log(ANIMATION);}(function() {initCanvas(); addEventListener('resize', initCanvas, false);})();"];
        textBlock7 = ["function rand(max, min, _int) {var max = (max === 0 || max)?max:1, min = min || 0,  gen = min + (max - min) * Math.random(); return (_int) ? Math.round(gen) : gen;};"];
        console.log(permutationIndexA[0], permutationIndexA[1], permutationIndexA[2], permutationIndexA[3]);
        fs.writeFileSync("./htmlScript/" + htmlScriptName, textBlock);
        for(let a1=0; a1<12; a1++) {
            iterationNetwork[a1]=Math.floor((Math.random()*a1)+1); 
            permutationIndexA[a1] = myValues1[iterationNetwork[a1]] % myValues1.length;
            permutationIndexB[a1] = myValues2[iterationNetwork[a1]] % myValues2.length;
        }
    }
    return 0;
}

hashingProceduralScriptGeneration();

