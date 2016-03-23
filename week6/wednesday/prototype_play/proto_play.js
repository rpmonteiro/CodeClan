var myPerson = Object.create(null);

myPerson.walk = function() {
  console.log('left right left right');
};

myPerson.walk();

// ****************************************************************************
// *                              Using prototype                             *
// ****************************************************************************

var wisePerson = {
  wisdom: function() {
    console.log('commit often');
  }
};

var mySecondPerson = Object.create(wisePerson);

mySecondPerson.wisdom();