{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='page.tpl'}

{block name='page_header_container'}
  <header class="page-header position-relative text-center text-white overflow-hidden flex-shrink-0 py-5">
    <div class="container">

      <img class="header-cover position-absolute" src="{$urls.img_url}shop-header.jpg" alt="" loading="lazy" width="1440" height="450">

      <div class="header-text container position-relative my-5 py-5">
        <h1 class="display-4 mb-3">{l s='Shops & restaurants' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</h1>
        <div class="header-text-content h4 mx-auto mb-5">{l s='Shop header description' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</div>
        <div class="header-link mb-4">
          <a class="position-relative font-weight-bold text-white text-uppercase" data-toggle="modal" data-target="#modalBookATable">{l s='Book a table' d='Shop.CreathemeCatalog'}</a>
        </div>
      </div>

    </div>
  </header>
{/block}

{block name='page_content_container'}



    <div class="section-shop-01 my-5">
      <div class="row align-items-center">

        <div class="col-lg-6 order-2 order-md-2 text-center mt-5 mt-lg-0">
          <img class="shop-01-img lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
               data-src="{$urls.img_url}shop-01.jpg" alt="" width="670" height="490">
        </div>
        <div class="col-lg-6 order-1 order-md-1 text-center px-5">
          <span class="circles position-absolute hidden-md-down"></span>
          <span class="dots position-absolute hidden-md-down"></span>
          <h2 class="shop-01-title display-4 mb-4">
            {l s='Prunier in [1]click&collect,[/1]' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
          </h2>
          <span>15 Pl. de la Madeleine, 75008 Paris | 01 47 42 98 91</span>
          <hr>
          <p class="shop-01-text mb-4">{l s='Shop 01 text' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</p>
          <div class="d-flex align-items-center justify-content-center">
            <a href="" data-toggle="modal" data-target="#modalBookATableMadeleine" class="d-none ml-2 btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4">{l s='Book a table' d='Shop.CreathemeGlobal'}</a>
          </div>
          <span class="d-block mt-3">
            <a target="_blank" href="/pdf/madeleine_menu{if Context::getContext()->language->id != 1}_en{/if}.pdf"><u>{l s='Download the Restaurant [1]Menu[/1]' d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</u></a> • <a target="_blank" href="/pdf/madeleine_menu_vin.pdf"><u>{l s='wine menu' d='Shop.CreathemeGlobal'}</u></a> </span>
        </div>

      </div>
    </div>


  <div class="section-shop-01 my-5">
    <div class="row align-items-center">

      <div class="col-lg-6 order-1 text-center mt-5 mt-lg-0">
        <img class="shop-01-img lazy" src="{$urls.img_url}xRe8zZ2w.jpeg" alt="" width="670" height="490">
      </div>
      <div class="col-lg-6 order-2 text-center px-5">
        <h2 class="shop-01-title display-4 mb-4">
          {l s='YA RT title' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}
        </h2>
        <span>{l s='YA RT subtitle' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</span>
        <hr>
        <p class="shop-01-text mb-4">{l s='YA RT text' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</p>
        <div class="d-flex align-items-center justify-content-center mt-4">
          <a href="" data-toggle="modal" data-target="#modalBookATable" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4">{l s='Book a table' d='Shop.CreathemeGlobal'}</a>
        </div>
        <div class="mt-1 text-center">
          <a target="_blank" href="/modules/pruniermenu/pdfs/prunier_victor_hugo_menu{if Context::getContext()->language->id != 1}_en{/if}.pdf" class="d-block mt-3" style="color: #DABF66;">
            <img
                    src="{$urls.img_url}download.svg" alt=""
                    class="mr-1">
            <u>
              {l s="Download the [1]restaurant's menu[/1]" d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>', '[2]' => '<br/>']}
            </u>
          </a>
        </div>

        <span class="circles position-absolute hidden-xl-down"></span>

      </div>
    </div>

  </div>
  </div>


  <div class="section-shop my-5 mx-lg-5 py-5">
    <div class="card card-block mx-lg-5 p-5">

      <h2 class="shop-title display-4 text-center my-4">
        <span class="d-inline-block position-relative">
          <span class="circles-text position-relative">
            {l s='Prunier, [1]close to you[/1]' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
          </span>
          <span class="circles position-absolute"></span>
        </span>
      </h2>

      <div id="map" style="width: 100%;height:480px;"></div>

    </div>
  </div>

  <!-- Modal book a table -->
  <div class="modal fade" id="modalBookATable" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-body">
        </div>
      </div>
    </div>
  </div>


  <!-- Modal book a table -->
  <div class="modal fade" id="modalBookATableMadeleine" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-body">
        </div>
      </div>
    </div>
  </div>

  <script src="https://api.mapbox.com/mapbox-gl-js/v2.6.0/mapbox-gl.js"></script>

  <script>
    mapboxgl.accessToken = '';

    const geojson = {
      'type': 'FeatureCollection',
      'features': {$storesForMap|@json_encode nofilter}
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
    }
  </script>
{/block}