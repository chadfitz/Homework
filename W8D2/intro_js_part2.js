function titleize (names, func) {
    let titleized = names.map(name => `Mx ${name} Jingleheimer Schmidt`);
    func(titleized);
}

// titleize(["Mary", "Brian", "Leo"], (names) => {
//     names.forEach(name => console.log(name))
// });

//-----------------

function Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
    return `${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`;
}

Elephant.prototype.grow = function() {
    this.height += 12;
    return this.height;
}

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}

Elephant.prototype.play = function() {
    const randomElement = Math.floor(Math.random() * this.tricks.length);
    console.log(`${this.name} is ${this.tricks[randomElement]}!`);
}

let dumbo = new Elephant("Dumbo", 1000, ["painting a picture", "riding a bicycle"]);
// console.log(dumbo.trumpet());
// console.log(dumbo.grow());
// console.log(dumbo.play());

//-----------------------

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [dumbo, ellie, charlie, kate, micah];

Elephant.paradeHelper = function (elephant) {
    console.log(`${elephant.name} is trumpeting!`);
}

//-----------------
let bfastOrder = dinerBreakfast();
function dinerBreakfast () {
    let order = "I'd like cheesy scrambled eggs please.";
    // console.log(order);

    return function (food) {
        order = `${order.slice(0, order.length-7)}and ${food} please.`
        console.log(order);
    }
}

// console.log(bfastOrder("pancakes"));

//---------------------
//Callbacks and Function Calls

// window.setTimeout(function () {
//     alert('HAMMER TIME!');
// }, 5000);

// function hammerTime (time) {
//     window.setTimeout(function () {
//         alert(`${time} is hammertime!`);
//     })
// }

//---------------------
// const readline = require('readline');

// const reader = readline.createInterface({
//     input: process.stdin,
//     output:process.stdout
// })

// function teaAndBiscuits () {
//     let first, second;
  
//     reader.question('Would you like some tea?', (res) => {
//       first = res;
//       console.log(`You replied ${res}.`);
//     });
  
//     reader.question('Would you like some biscuits?', (res) => {
//       second = res;
//       console.log(`You replied ${res}.`);
//     });
  
//     const firstRes = (first === 'yes') ? 'do' : 'don\'t';
//     const secondRes = (second === 'yes') ? 'do' : 'don\'t';
//     console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
//     reader.close();
//   }


//--------------------
function Cat () {
    this.name = 'Markov';
    this.age = 3;
  }
  
  function Dog () {
    this.name = 'Noodles';
    this.age = 4;
  }
  
  Dog.prototype.chase = function (cat) {
    console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
  };
  
  const Markov = new Cat ();
  const Noodles = new Dog ();

  console.log(Noodles.chase(Markov));
  console.log(Noodles.chase.call(Markov, Noodles));
  console.log(Noodles.chase.apply(Markov, [Noodles]));