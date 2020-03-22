// stochastic iChing reading using javascript - tiago morais morgado 2019

const iChing = ["qián", "kun", "zhun", "meng", "xu", "song", "shi", "bi", "xiao chu", "iu", "tai", "pi", "tong ren", "da you", "qian", "yu", "sui", "gu", "lin", "guan", "shi ke", "bi", "bo", "tu", "wu wang", "da chu", "yi", "da guo", "kan", "li", "xian", "heng", "dun", "da zhuang", "jin", "ming yi", "jia ren", "kui", "jian", "xie", "sun", "yi", "guai", "gou", "cui", "sheng", "kun", "jing", "ge", "ding", "zhen", "gen", "jian", "gui mei", "feng", "Lu", "xun", "dui", "huan", "jie", "zhong fu", "xiao guo", "ji ji", "wei ji"];

const getRandomCard = () => iChing[
	Math.random() * iChing.length | 0
];
const getCards = (n) => Array.from({length: n}).map(getRandomCard);

for(let i = 0; i < 100; i++) { console.log(getCards(3)) };