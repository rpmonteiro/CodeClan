// Write a function, functionCaller, that takes a function (myCallback) and a number as parameters. The functionCaller returns myCallback called with the number (as an argument).

function myCallback(number) {
  return number;
}

function functionCaller(callback, number) {
  return callback(number);
}

// You give a friend 50p to get you something form the shop.
// Write a function getSomethingFromTheShop, that takes in budget (as a string) and a callback function.
// Invoke the callback function inside getSomethingFromTheShop and pass it two arguments (what you wanted from the shop and what you actually got).
// Finally, invoke the getSomethingFromTheShop function by passing it a string for the budget and an anonymous function as the callback.
// The anonymous callback function should have two parameters - req and res. (standing for request and response).
// In the getSomethingFromTheShop function include console.log("I have " + budget + " to go to the shop"); In the anonymous function include console.log("I wanted a " + req + " but all I got was a " + res);

function getSomethingFromTheShop(budget, callback) {
  console.log("I have " + budget + " pence to go to the shop.");
  callback('chocolate', 'banana');
}

getSomethingFromTheShop('50', function(req, res) {
  console.log("I wanted a " + req + " but all I got was a " + res + " :(");
});

// Maths Fun: Write two functions increment and square. increment should take in a number and return the number plus 1. square should take in a number and return it multiplied by itself.
// Write another function called doSomeMathsForMe that takes in a number (n) and a function (a callback) and executes the callback, passing in n as an argument.
// Invoke doSomeMathsForMe by passing it a number and the increment and/or square function.

function increment(n) {
  return n += 1;
}

function square(n) {
  return n * n;
}

function doSomethingForMe(n, callback) {
  console.log(callback(n));
}

doSomethingForMe(5, increment);
doSomethingForMe(10, square);