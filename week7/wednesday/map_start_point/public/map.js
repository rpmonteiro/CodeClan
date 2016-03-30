function Map(latlng, zoom) {
  var mapDiv = document.getElementById('map');
  this.googleMap = new google.maps.Map(mapDiv, {
    center: latlng,
    zoom: zoom
  });
}