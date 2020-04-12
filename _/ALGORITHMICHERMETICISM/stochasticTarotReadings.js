// stochastic tarot reading using javascript - tiago morais morgado 2019

const majorArcana = ["le bateleur", "la papese", "l'imperatrice", "l'empereur", "le pape", "l'amoureaux", "le chariot", "la justice", "l'ermite", "la roue de fortune", "la force", "le pendu", "la mort", "temperance", "le diable", "la maison dieu", "l'etoile", "la lune", "la soleil", "le jugement", "le monde", "le fol [le mat]"];
const getRandomCard = () => majorArcana[Math.random() * majorArcana.length | 0];
const getCards = (n) => Array.from({length: n}).map(getRandomCard);
for(let i = 0; i<100; i++){console.log(getCards(4))};

