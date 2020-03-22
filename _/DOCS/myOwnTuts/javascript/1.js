let myConstructor = myConstructor || {
    name: null,
    age: null,
    city: null,
    state: null,
    
    create: function(name, age, city, state) {
        let obj = Object.create(this);
        obj.init(name, age, city, state);
        return obj;
    },

    init: function(name, age, city, state) {
        this.name = `Tiago`;
        this.age = 31;
        this.city = 'Braga';
        this.state = 'Portugal';
    }
}

let myConstructor = myConstructor.create('tiago', 31, 'braga', 'portugal');