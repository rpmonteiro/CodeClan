var init = function(){
  console.log('app started');

  var button = document.getElementById('add-button');

  var handleClick = function() {
    console.log('I was clicked');
  };

  button.onclick = function() {
    var textInput = document.getElementById('film-text-input').value;
    console.log(textInput);
    var ul = document.getElementById('film-list');
    var li = document.createElement('li');
    li.appendChild(document.createTextNode(textInput));
    ul.appendChild(li);
  };
};

window.onload = init;