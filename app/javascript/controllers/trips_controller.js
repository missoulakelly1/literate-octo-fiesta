import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "field", "map", "latitude", "longitude" ]

  connect() {
    if (typeof(google) != "undefined") {
      this.initMap2()
    }
  }

  initMap2() {
  
    var lat = document.getElementById('places_latitude').value;
    var lng = document.getElementById('places_longitude').value;

    var myCoords = new google.maps.LatLng(lat, lng);
  
    var mapOptions = {
      center: myCoords,
      zoom: 14
    };
  
    var map = new google.maps.Map(document.getElementById('map2'),
    mapOptions);
  
    var marker = new google.maps.Marker({
        position: myCoords,
        animation: google.maps.Animation.DROP,
        map: map,
        draggable: true
      });
    
  }

}