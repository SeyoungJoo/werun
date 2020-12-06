import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 2000 });
  };

  const addMarkersToMap = (map, markers) => {
    const mapMarkers = []

    markers.forEach((marker) => {

      // Create a HTML element for your custom marker
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'cover';
      element.style.backgroundRepeat = 'round';
      element.style.width = '50px';
      element.style.height = '50px';
      
      // Pass the element as an argument to the new marker
      const newMarker = new mapboxgl.Marker(element)
        .setLngLat([marker.lng, marker.lat])
        .addTo(map);
      mapMarkers.push(newMarker)
       // We use the "getElement" funtion provided by mapbox-gl to access to the marker's HTML an set an id
       newMarker.getElement().dataset.markerId = marker.id;
       // Put a microphone on the new marker listening for a mouseenter event
       newMarker.getElement().addEventListener('mouseenter', (e) => toggleCardHighlighting(e) );
       // We put a microphone on listening for a mouseleave event
       newMarker.getElement().addEventListener('mouseleave', (e) => toggleCardHighlighting(e) );
  
    });

    
    const openInfoWindow = (mapMarkers) => {
      // Select all cards
      const cards = document.querySelectorAll('.index-card');
      cards.forEach((card, index) => {
        // Put a microphone on each card listening for a mouseenter event
        card.addEventListener('mouseenter', () => {
          // alert('bug');
          // Here we trigger the display of the corresponding marker infoWindow with the "togglePopup" function provided by mapbox-gl
          mapMarkers[index].togglePopup();
        });
        // We also put a microphone listening for a mouseleave event to close the modal when user doesn't hover the card anymore
        card.addEventListener('mouseleave', () => {
          mapMarkers[index].togglePopup();
        });
      });
      }
  
      openInfoWindow(mapMarkers);
  };

  
  const toggleCardHighlighting = (event) => {
    // We select the card corresponding to the marker's id
    const card = document.querySelector(`[data-marker-id="${event.currentTarget.dataset.markerId}"]`);
    // Then we toggle the class "highlight github" to the card
    card.classList.toggle('highlight');
    }
  

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);

    //calling the method
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);

     // Adding fancy little search bar
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }));
  }
};

export { initMapbox };
