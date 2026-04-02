{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='page.tpl'}

{block name='page_content_container'}

    {hook h="displayBoutiques"}

    <div id="map" style="width: 100%;height:480px;"></div>

    <script src="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.js"></script>

    <script>
      mapboxgl.accessToken = '';
  
      const geojson = {
        type: 'FeatureCollection', 
        features: {$storesForMap|@json_encode nofilter}
      };
  
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v11',
        center: [2.4082538807925635, 47.10455983882134],
        zoom: 3
      });
  
      map.addControl(new mapboxgl.NavigationControl());
  
      // add markers to map
      for (const feature of geojson.features) {
  // create a HTML element for each feature

        const el = document.createElement('div');
        el.className = 'marker';
  
  // make a marker for each feature and add it to the map
        new mapboxgl.Marker(el)
                .setLngLat(feature.geometry.coordinates)
                .setPopup(
                        new mapboxgl.Popup({ offset: 25 }) // add popups
                                .setHTML(
                                        '<h4>' + feature.properties.title + '</h4><p>' + feature.properties.description + '</p>'
                                )
                )
                .addTo(map);

                console.log(el);
                console.log(feature.geometry.coordinates);
                console.log(feature.properties.title);
                console.log(feature.properties.description);
                console.log(feature);
      }
    </script>

{/block}