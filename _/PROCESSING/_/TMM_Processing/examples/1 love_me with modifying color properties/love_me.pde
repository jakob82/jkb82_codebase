/*
a todos aqueles que sempre estiveram do meu lado e que lutaram junto ao meu lado 
nos momentos bons e nos menos bons. àqueles cujas expectativas defraudei. 
por aqueles que sentem orgulho em mim (por poucos que sejam). 
aos meus amigos (e amigas), àqueles que se sentem magoados comigo por algum motivo. 
àqueles que me ensinaram o que era amar. àqueles me ajudaram a descobrir os segredos 
dos deuses. àqueles que me trataram com silêncio, distanciamento e indiferença. 
àqueles que eu abandonei (jamais serão esquecidos). e a todos os que me abandonaram. 
*/


void setup()
{
  background(255);
  size(600,400);
  strokeWeight(5);

}

void draw()
{
    background(0);

// make each letter a different color

// draw the letter "L" in red
stroke(255/2,206/2,218/2);
line(10,10,10,100); 
line(10,100,100,100); 

stroke(175/2,235/2,245/2);
ellipse(140,55,80,100);
fill(0);

stroke(175/2,177/2,245/2);
line(190,10,240,100);
line(240,100,300,10);

stroke(175/2,245/2,231/2);
line(320,10,320,100);
line(320,10,390,10);
line(320,55,380,55);
line(320,100,390,100);

stroke(175/2,245/2,192/2);
line(120,120,120,225);
line(120,120,175,220);
line(175,220,225,120);
line(225,120,225,225);

stroke(245/2,211/2,208/2);
line(250,120,250,225);
line(250,120,320,120);
line(250,170,300,170);
line(250,225,320,225);


}
