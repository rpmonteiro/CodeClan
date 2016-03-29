var init = function(){
  console.log('app started');

  var films = JSON.parse(localStorage.getItem('film_app_list')) || [];
  var ul = document.getElementById('film-list');
  var addButton = document.getElementById('add-button');

  function insertItem(item) {
    ul.insertAdjacentHTML('afterend', '<li>' + item + '</li>');
  }

  function grabTextInput() {
    return document.getElementById('film-text-input').value;
  }

  function storeItem(item) {
    films.push(item);
    localStorage.setItem('film_app_list', JSON.stringify(films));
  }

  var handleAddClick = function(){
    var filmName = grabTextInput();
    insertItem(filmName);
    storeItem(filmName);
  }

  films.forEach(function(filmName) {
    insertItem(filmName);
  })

  addButton.onclick = handleAddClick;
};

window.onload = init;
