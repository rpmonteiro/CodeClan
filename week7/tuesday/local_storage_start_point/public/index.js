var init = function(){
  console.log('app started');

  var films = JSON.parse(localStorage.getItem('film_app_list')) || [];
  console.log('on init got films:', films);

  var button = document.getElementById('add-button');
  var handleClick = function(){
    console.log('Woah I was got clicked')
    var textInput = document.getElementById('film-text-input')
    var filmName = textInput.value;
    console.log('film name', filmName);

    var li = document.createElement('li');
    li.innerHTML = filmName;
    var ul = document.getElementById('film-list');
    ul.appendChild(li);
  }
  button.onclick = handleClick;
};

window.onload = init;
