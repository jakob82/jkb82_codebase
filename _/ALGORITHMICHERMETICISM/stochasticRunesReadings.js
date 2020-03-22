// stochastic tarot reading using javascript - tiago morais morgado 2019

const majorArcana = ["*fehu", "?*ūruz", "?*þurisaz", "*ansuz", "*raidō", "?*kaunan", "*gebō", "*wunjō", "*hagalaz", "*naudiz", "*īsaz", "*jēra-", "*ī(h)waz/*ei(h)waz", "?*perþ-", "?*algiz", "*sōwilō", "*tīwaz/*teiwaz", "*berkanan", "*ehwaz", "*mannaz", "laguz", "*ingwaz", "*ōþila-/*ōþala-", "*dagaz"];

const getRandomCard = () => majorArcana[
	Math.random() * majorArcana.length | 0
];
const getCards = (n) => Array.from({length: n}).map(getRandomCard);

for(let i=0; i<100; i++) {console.log(getCards(3))};