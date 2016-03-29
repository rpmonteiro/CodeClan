var init = function(){
  console.log('app started');

  var films = JSON.parse(localStorage.getItem('film_app_list')) || [];
  var ul = document.getElementById('film-list');
  var button = document.getElementById('add-button');

  function insertItem(item) {
    ul.insertAdjacentHTML('afterend', '<li>' + item + '</li>');
  }

  function grabTextInput() {
    return document.getElementById('film-text-input').value;
  }

  films.forEach(function(filmName) {
    insertItem(filmName);
  })

  var handleClick = function(){
    var filmName = grabTextInput();
    insertItem(filmName);
    films.push(filmName);
    localStorage.setItem('film_app_list', JSON.stringify(films));
  }
  button.onclick = handleClick;
};

window.onload = init;
