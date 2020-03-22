const dairy = ["butter", "egg", "milk", "parmesan", "cheddar", "american cheese", "sour cream", "cream cheese", "mozarella", "yogurt", "cream", "evaporated milk", "whipped cream", "half and half", "feta", "monterey jack cheese", "condensed milk", "cottage cheese", "ice cream", "swiss cheese", "velveeta", "frosting", "buttermilk", "ricotta", "goat cheese", "provolone", "blue cheese", "powdered milk", "colby cheese", "pepper jack", "italian cheese", "soft cheese", "gouda", "peperjack cheese", "romano", "brie", "pizza cheese", "ghee", "creme fraiche", "cheese soup", "gruyere", "pecorino cheese", "custard", "muenster", "queso fresco cheese", "hard cheese", "havarti cheese", "asiago", "mascarpone", "neufchatel", "halloumi", "paneer", "bick cheese", "camembert cheese", "goat milk", "garlic herb cheese", "edam cheese", "machego", "fontina", "stilton cheese", "emmenthaler cheese", "red leicester cheese", "jarlsberg cheese", "bocconici cheese", "farmer cheese", "creme de cassis", "wendesleydale cheese", "longhorn cheese", "double gloucester cheese", "raclette cheese", "lancashire cheese", "ceshire"];
const vegetables = ["onion", "garlic", "tomato", "potato", "carrot", "bell pepper", "basil", "parsley", "brocolli", "corn", "spinach", "mushroom", "green beans", "ginger", "chili pepper", "celery", "rosemary", "salad greens", "red onion", "cucumber", "sweet potato", "pickle", "avocado", "zucchini", "cilantro", "frozen vegetables", "olive", "asparagus", "cabbage", "cauliflower", "dill", "kale", "mixed vegetable", "pumpkin", "squash", "mint", "scallion", "sun dried tomato", "shallot", "eggplant", "beet", "batternut squash", "horseradish", "leek", "caper", "brussels sprout", "artichocke heart", "chia seeds", "radish", "sauerkraut", "artichoke", "portobello mushroom", "sweet pepper", "arugula", "spaghetti squash", "capsicum", "bok choy", "parship", "okra", "yam", "fennel", "turnip", "snow peas", "bean sprouts", "seaweed", "chard", "collar", "canned tomato", "pimiento", "watercress", "tomatillo", "rocket", "mustard greens", "bamboo shoot", "rutabaga", "endive", "broccoli", "rabe", "jicama", "kohlrabi hearts of palm butternut", "celery root daikon radicchio", "porcini", "chinese broccoli", "jerusalem artichoke", "cress water", "chestnut", "dulse micro greens", "burdock chayote"];
const fruits = ["lemon apple", "banana lime", "strawberry orange", "pineapple blueberry", "raisin", "coconut grape", "peach raspberry", "cranberry", "mango", "pear", "blackberry", "cherry", "watermelon", "berries", "kiwi grapefruit", "mandarin", "craisins", "cantaloupe", "plum", "apricot", "clementine", "prunes", "apple", "butter", "pomegranate", "nectarine fig", "tangerine papaya", "rhubarb", "sultanas", "plantain", "currant", "passion fruit", "guava", "persimmons", "lychee", "lingonberry", "tangelos", "kumquat", "boysenberry", "star fruit", "quince", "honeydew", "crabapples"];
const bakingGrains = ["rice", "pasta", "flour", "bread", "baking powder", "baking soda", "bread", "crumbs", "cornstarch", "rolled oats", "noodle flour", "tortillas", "pancake", "mix yeast", "cracker", "quinoa", "brown rice", "cornmeal", "self rising", "flour", "cake mix", "saltines", "popcorn", "macaroni", "cheese", "mix corn", "tortillas", "ramen cereal", "biscuits", "stuffing", "couscous", "pie", "crust", "bisquick", "chips", "angel hair", "coconut", "flake bread", "flour", "croutons", "lasagne", "pizza dough", "bagel puff", "pastry", "hot dog bun", "barley", "multigrain bread", "potato flakes", "pretzel cornbread", "english muffin", "cornflour crescent", "roll dough", "cream of wheat", "coconut flour", "risotto muffin", "bicarbonate of soda", "ravioli", "wheat rice", "flour", "polenta baguette", "gnocchi", "vermicelli", "semolina", "wheat germ", "buckwheat croissants", "yeast", "flake", "pierogi", "matzo", "meal", "rye tapioca", "flour shortcrust", "pastry potato", "starch breadsticks", "ciabatta spelt", "angel food", "tapioca starch", "starch whole", "wheat flour", "gram flour", "sourdough starter", "wafer bran", "challah sponge", "cake", "malt extract", "sorghum flour"];
const addedSweeteners = ["sugar", "brown sugar", "honey", "confectioners sugar", "maple syrup", "corn syrup", "molasses", "artificial sweetener", "agave nectar"];
const spices = ["cinnamon", "vanilla garlic", "powder", "paprika", "oregano", "chili", "powder", "red pepper", "flake cumin", "cayenne", "italian seasoning", "thyme", "onion powder", "nutmeg ground", "nutmeg curry", "powder bay", "leaf", "taco", "seasoning sage", "clove", "allspice", "turmeric chive", "peppercorn", "ground", "coriander", "cajun", "seasoning", "coriander", "celery", "salt", "vanilla", "essence", "herbs", "steak", "seasoning", "poultry", "seasoning", "chile powder", "cardamom", "italian herbs", "tarragon", "garam", "masala", "marjoram", "mustard", "seed", "celery seed", "chinese five", "spice", "italian spice", "saffron", "onion flake", "herbes de provence", "chipotle", "dill seed", "fennel seed", "caraway", "cacao star", "anise savory", "chili paste", "tamarind", "aniseed fenugreek", "lavender", "old bay", "seasoning lemon", "balm"];
const meats = ["chicken breast", "ground beef", "bacon sausage", "beef", "steak", "ham", "hot dog", "pork", "chops", "chicken thighs", "ground turkey", "cooked chicken", "turkey", "pork", "pepperoni", "whole chicken", "chicken leg", "ground pork", "chorizo", "chicken wings", "beef", "roast", "polish sausage", "salami pork", "roast ground", "chicken pork", "ribs", "spam", "venison pork", "shoulder bologna", "bratwurst prosciutto", "lamb corned", "beef chicken", "roast lamb", "chops pancetta", "ground lamb", "beef", "ribs", "duck", "pork", "belly", "beef liver", "leg of lamb", "canadian bacon", "beef shank", "veal chicken", "giblets cornish", "hen lamb", "shoulder", "lamb shank", "deer ground", "veal pastrami", "rabbit sliced", "turkey pork", "loin elk", "beef suet", "veal cutlet", "lamb loin", "marrow bones", "goose chicken", "tenders veal", "chops quail", "oxtail pheasant", "lamb", "liver", "moose", "turkey", "liver pork", "liver veal", "shank foie", "gras", "beef sirloin", "liver sausage", "sweetbread", "wild boar", "snail pigeon", "duck liver", "goose liver", "grouse ostrich", "soppressata alligator"];
const fish = ["canned tuna", "salmon", "tilapia", "fish", "fillets", "cod", "canned salmon", "anchovy smoked", "salmon sardines", "tuna steak", "whitefish", "halibut", "trout", "haddock flounder", "catfish", "mahi mahi", "mackerel sole", "sea bass", "red snapper", "swordfish pollock", "herring perch", "grouper caviar", "monkfish", "rockfish", "lemon sole", "pike barramundi", "eel bluefish", "carp cuttlefish", "pompano arctic", "char", "john dory marlin", "amberjack sturgeon"];
const seafood = ["shrimp", "crab", "prawns", "scallop", "clam", "lobster", "mussel", "oyster", "squid", "clamari", "crawfish", "octopus", "cockle", "conch", "sear urchin"];
const condiments = ["mayonnaise", "ketchup", "mustard", "vinegar", "soy", "sauce", "balsamic", "vinegar", "worcestershire", "hot sauce", "barbecue sauce", "ranch dressing", "wine vinegar", "apple cider", "vinegar cider", "vinegar", "italian dressing", "rice vinegar", "salad", "dressing tabasco", "fish sauce", "teriyaki steak", "sauce tahini", "enchilada sauce", "vinaigrette dressing", "oyster sauce", "honey", "mustard", "sriracha", "caesar dressing", "taco sauce", "mirin blue", "cheese dressing", "sweet and sour", "sauce thousand", "island picante", "sauce", "buffalo sauce", "french dressing", "tartar sauce", "cocktail sauce", "marsala adobo", "sauce tzatziki", "sauce sesame", "dressing ponzu", "duck sauce", "pickapeppa sauce", "yuzu juice", "cream sauce"];
const oils = ["olive oil", "vegetable oil", "cooking spray", "canola oil", "shortening", "sesame oil", "coconut oil", "peanut oil", "sunflower oil", "lard", "grappe seed oil", "corn oil", "almand oil", "avocado oil", "safflower oil", "Walnut oil", "hazeinut oil", "palm oil", "saybean oil", "mustard oil", "pistachio oil", "soya oil"];
const seasonings = ["bouillon", "ground ginger", "sesame seed", "cream of tartar", "chili sauce", "soya sauce", "apple cider", "hoisin sauce", "liquid smoke", "rice", "wine", "vegetable bouillon", "poppy seed", "balsamic glaze", "miso wasabi", "fish stock", "rose water", "pickling salt", "champagne", "vinegar", "bbq rub", "jamaican jerk", "spice accent", "seasoning pickling", "spice mustard", "powder mango", "powder adobo", "seasoning kasuri", "methi caribbean", "jerk seasoning", "brine matcha", "powder cassia"];
const sauces = ["tomato sauce", "tomato paste", "salsa", "pesto", "alfredo sauce", "beef gravy", "curry paste", "chicken gravy", "cranberry sauce", "turkey gravy", "mushroom gravy", "sausage gravy", "onion gravy", "cream gravy", "pork gravy", "tomato gravy", "giblet grayvy"];
const legumes = ["green beans", "peas", "black beans", "chickpea", "lentil", "refried beans", "hummus chili", "beans lima", "beans", "kidney beans", "pinto beans", "edamame split", "peas snap", "peas soybeans", "cannellini beans", "navy beans", "french beans", "red beans", "great northern", "beans", "fava beans"];
const alcohol = ["white wine", "beer", "red wine", "vodka", "rum", "whiskey", "tequila", "sherry", "bourbon", "cooking", "wine whisky", "liqueur brandy", "gin kahlua", "irish cream", "triple sec", "champagne", "amaretto", "cabernet", "sauvignon", "vermouth", "bitters", "maraschino", "sake grand", "marnier masala", "dessert wine", "schnapps port", "wine sparkling", "wine cognac", "chocolate liqueur", "burgundy wine", "limoncello creme", "menthe bloody", "mary raspberry", "liquor curacao", "frangelico shaoxing", "wine absinthe", "madeira wine", "ouzo anisette", "grappa ciclon", "drambuie"];
const soup = ["chicken broth", "mushroom soup", "beef broth", "tomato soup", "vegetable stock", "chicken soup", "onion soup", "vegetable soup", "celery soup", "dashi", "lamb stock", "pork stock", "veal stock"];
const nuts = ["peanut butter", "almond", "walnut", "pecan", "peanut", "cashew", "flax", "pine nut", "pistachio", "almond meal", "hazelnut", "macadamia", "almond paste", "chestnut", "praline", "macaroon"];
const dairyAlternatives = ["margarine", "coconut milk", "almond milk", "soy milk", "rice milk", "hemp milk", "non dairy creamer"];
const dessertsAndSnacks = ["chocolate", "apple sauce", "strawberry jam", "graham cracker", "marhsmallow", "chocolate syrup", "potato chips", "nutella", "chocolate morsels", "bittersweet chocolate", "pudding mix", "rasperry jam", "dark chocolate", "chocolate chips", "jam", "white chocolate", "brownie mix", "chocolate pudding", "jello", "caramel", "chocolate powder", "candy", "corn chips", "cookies", "apricot jam", "chocolate bar", "cookie dough", "oreo", "doritos", "chocolate cookies", "butterscoth", "blackberry preserves", "blueberry jam", "peach preserves", "cherry jam", "fig jam", "plum jam", "cinnamon roll", "fudge", "cookie crumb", "grape jelly", "chilli jam", "lady fingers", "black pudding", "chocolate wafer", "gummy worms", "biscott biscuit", "doughnut", "amaretti cookies", "apple jelly", "red pepper jelly", "orange jelly", "jalapeno jelly", "mint jelly", "currant jelly", "lemon jelly", "quince jelly"];
const beverages = ["coffee", "orange juice", "tea", "green tea", "apple juice", "tomato juice", "coke", "chocolate milk", "pinneaple juice", "lemonade", "cranberry juice", "expresso", "fruit juice", "ginger ale", "club soda", "sprite", "kool aid", "grenadine", "margarita mix", "cherry juice", "pepsi", "mountain dew"];

let permutationIndexA = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
let permutationIndexB = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

let iterationArray = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

let iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

function permutateChemicalFormula7() {

	for (let i1 = 0; i1 < Math.pow(20, 20); i1++) {

		iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

		// let metaiterator = 0; if (iterationArray[1] == myValues2.length) { return 0; }
		//iterationArray[0] = i1; var iterationArrayIt = i1 % myValues2.length; if (iterationArrayIt == 0) iterationArray[1] += 1;

		for (let a2 = 0; a2 < 20; a2++) { iterationNetwork[a2] = Math.floor((Math.random() * a2) + 1); }

		console.log(
			dairy[iterationNetwork[0] % dairy.length]
			+ fruits[iterationNetwork[1] % fruits.length]
			+ bakingGrains[iterationNetwork[2] % bakingGrains.length]
			+ addedSweeteners[iterationNetwork[3] % addedSweeteners.length]
			+ seasonings[iterationNetwork[4] % seasonings.length]
			+ sauces[iterationNetwork[5] % sauces.length]
			+ dairyAlternatives[iterationNetwork[6] % dairyAlternatives.length]
			+ "\n");

	}

	return 0;

}

permutateChemicalFormula7();

function permutateChemicalFormula8() {

	for (let i1 = 0; i1 < Math.pow(20, 20); i1++) {

		iterationNetwork = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

		// let metaiterator = 0; if (iterationArray[1] == myValues2.length) { return 0; }
		iterationArray[0] = i1; var iterationArrayIt = i1 % myValues2.length; if (iterationArrayIt == 0) iterationArray[1] += 1;

		for (let a2 = 0; a2 < 20; a2++) { iterationNetwork[a2] = Math.floor((Math.random() * a2) + 1); }

		console.log(meats[iterationNetwork[0] % meats.length]
			+ condiments[iterationNetwork[1] % condiments.length]
			+ oils[iterationNetwork[2] % oils.length]
			+ seasonings[iterationNetwork[3] % seasonings.length]
			+ sauces[iterationNetwork[4] % sauces.length]
			+ legumes[iterationNetwork[5] % legumes.length]
			+ alcohol[iterationNetwork[6] % alcohol.length]
			+ nuts[iterationNetwork[7] % nuts.length]
			+ dairyAlternatives[iterationNetwork[8] % dairyAlternatives.length]
			+ dessertsAndSnacks[iterationNetwork[9] % dessertsAndSnacks.length]
			+ beverages[iterationNetwork[10] % beverages.length]
			+ "\n");

	}

	return 0;

}

permutateChemicalFormula8();

