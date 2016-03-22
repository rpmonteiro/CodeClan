function hello_world(name) {
  console.log(name + ' you are awesome!');
}

hello_world('Keith');

myArray = [1, 2, 3, 4, 5, 6];


function firstLast(firstName, lastName) {
  return console.log('Hello,', firstName, lastName);
}

function multiply(multiplier, ...theArgs) {
  return theArgs.map(function (element) {
    return multiplier * element;
  });
}

firstLast('Ricardo', 'Monteiro');
multiply(2, 3, 4);