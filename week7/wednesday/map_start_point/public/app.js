function initialize() {
  var zoom = 14;
  var coordinates = {lat: 55.951998, lng: -3.18997};
  var map = new Map(coordinates, zoom);
  map.addMarker(coordinates);
  var currentLocation;

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      currentLocation = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      }
      map.addMarker(currentLocation);
    })
  }

}

window.onload = initialize;

