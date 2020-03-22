const runes= ["*fehu", "?*ūruz", "?*þurisaz", "*ansuz", "*raidō", "?*kaunan", "*gebō", "*wunjō", "*hagalaz", "*naudiz", "*īsaz", "*jēra-", "*ī(h)waz/*ei(h)waz", "?*perþ-", "?*algiz", "*sōwilō", "*tīwaz/*teiwaz", "*berkanan", "*ehwaz", "*mannaz", "laguz", "*ingwaz", "*ōþila-/*ōþala-", "*dagaz"];
const majorArcana = ["le bateleur", "la papese", "l'imperatrice", "l'empereur", "le pape", "l'amoureaux", "le chariot", "la justice", "l'ermite", "la roue de fortune", "la force", "le pendu", "la mort", "temperance", "le diable", "la maison dieu", "l'etoile", "la lune", "la soleil", "le jugement", "le monde", "le fol [le mat]"];
const iChing = ["qián", "kun", "zhun", "meng", "xu", "song", "shi", "bi", "xiao chu", "iu", "tai", "pi", "tong ren", "da you", "qian", "yu", "sui", "gu", "lin", "guan", "shi ke", "bi", "bo", "tu", "wu wang", "da chu", "yi", "da guo", "kan", "li", "xian", "heng", "dun", "da zhuang", "jin", "ming yi", "jia ren", "kui", "jian", "xie", "sun", "yi", "guai", "gou", "cui", "sheng", "kun", "jing", "ge", "ding", "zhen", "gen", "jian", "gui mei", "feng", "Lu", "xun", "dui", "huan", "jie", "zhong fu", "xiao guo", "ji ji", "wei ji"];

let inputVariable=2; console.log("here it goes " + inputVariable);

const getRandomCard = () => majorArcana[
    Math.random() * majorArcana.length | 0
];

const getRandomCard = () => runes[
    Math.random() * runes.length | 0
];

const getRandomCard = () => iChing[
    Math.random() * iChing.length | 0
];

const getCards = (n) => Array.from({length: n}).map(getRandomCard);

switch(inputVariable) {
    
    case '0':   
        console.log(getCards(4));
        break;

    case '1':
        console.log(getCards(4));
        break;

    case '2':
        console.log(getCards(4)); 
        break;
        
    default:
        break;
}



