window.onload = function() {
  var canvas = document.getElementById('main');
  console.log('canvas', canvas);
  var context = canvas.getContext('2d');
  context.fillStyle="red";
  context.fillRect(10, 10, 50, 50);

  context.beginPath();
  context.moveTo(100, 100);
  context.lineTo(100, 150);
  context.stroke()

  context.beginPath();
  context.arc(200, 70, 40, 0, Math.PI*2, false);
  context.stroke();

  canvas.onclick = (function() {
    console.log('the circle was clicked');
  })
};