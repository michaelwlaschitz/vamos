import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  if (markers.length != 0) {
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };
};


const initMapbox = () => {
  const mapMobile = document.getElementById('map-mobile');
  const mapDesktop = document.getElementById('map-desktop')
  const mapElement = document.getElementById('map')

    if (mapElement) { // only build a map if there's a div#map to inject into

      mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10',
        center: [-74.5, 40], // starting position
        zoom: 9 // starting zoom
      });

      map.addControl(new mapboxgl.NavigationControl());


      const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup) // add this
          .addTo(map);
      });

      fitMapToMarkers(map, markers);

      $('#exampleModal').on('show.bs.modal', function () {
        map.resize()
        console.log("test");
      });
    }

    if (mapDesktop) { // only build a map if there's a div#map to inject into

      mapboxgl.accessToken = mapDesktop.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map-desktop',
        style: 'mapbox://styles/mapbox/streets-v10',
        center: [-74.5, 40], // starting position
        zoom: 9 // starting zoom
      });

      map.addControl(new mapboxgl.NavigationControl());


      const markers = JSON.parse(mapDesktop.dataset.markers);
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup) // add this
          .addTo(map);
      });

      fitMapToMarkers(map, markers);
    }

    if (mapMobile) { // only build a map if there's a div#map to inject into

      mapboxgl.accessToken = mapMobile.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map-mobile',
        style: 'mapbox://styles/mapbox/streets-v10',
        center: [-74.5, 40], // starting position
        zoom: 9 // starting zoom
      });

      map.addControl(new mapboxgl.NavigationControl());


      const markers = JSON.parse(mapMobile.dataset.markers);
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup) // add this
          .addTo(map);
      });

      fitMapToMarkers(map, markers);

      $('#exampleModal').on('show.bs.modal', function () {
        map.resize()
        console.log("test");
      });
    }



};

export { initMapbox };
