{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div class="section-manufacture my-5 py-xl-5">
  <div class="row">

    <div class="col-md-5 col-lg-7 col-xl-8">
      <div class="row">
        <div class="col-lg-4 hidden-md-down">
          <img class="manufacture-img-01 lazy position-relative" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
               data-src="{$urls.img_url}homexp00.png" alt="" width="300" height="400">
        </div>
        <div class="col-lg-4 hidden-md-down">
          <img class="manufacture-img-02 lazy position-relative" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
               data-src="{$urls.img_url}home-manufacture-01.jpg" alt="" width="300" height="400">
        </div>
        <div class="col-lg-4 text-center mb-5 mb-md-0">
          <img class="manufacture-img-03 lazy position-relative" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
               data-src="{$urls.img_url}home-manufacture-02.jpg" alt="" width="300" height="400">
        </div>
      </div>
    </div>

    <div class="col-md-7 col-lg-5 col-xl-4 text-center text-md-left pl-md-5">
      <h2 class="manufacture-title position-relative display-4 mt-5 mt-md-4 pt-3 pt-md-0 pb-2">
        <span class="circles-text position-relative">
          {l s='[1]The art[/1] of French caviar' d='Shop.CreathemeModules' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
        </span>
        <span class="circles position-absolute"></span>
        <span class="dots position-absolute hidden-md-down"></span>
      </h2>
      <span style="font-size: 18px;" class="mb-3 d-block">{l s='Handmade caviar.' d='Shop.CreathemeModules'}</span>
      <p class="manufacture-text text-md-justify mb-4">{l s='Manufacture Text' d='Shop.CreathemeModules'}</p>
      <a class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4" href="{$link->getPageLink('maisonprunier')}">{l s='The Prunier house' d='Shop.CreathemeModules'}</a>
    </div>

  </div>
</div>

<div class="section-info position-relative my-5 p-5">
  <div class="owl-carousel mt-xxl-5">

    <div class="position-relative mb-4 mb-md-0 px-2 cursor-pointer" onclick="window.open('{$link->getCategoryLink(2)}','_self');">
      <img class="info-img-01 lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
           data-src="{$urls.img_url}home-info-03.jpg" alt="" width="430" height="550">
      <div class="info-text position-absolute text-white p-4">
        <h3 class="display-4">
          {l s='Our [1]caviars[/1]' d='Shop.CreathemeModules' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
        </h3>
        <p class="text">{l s='All our caviars, French.' d='Shop.CreathemeModules'}</p>
      </div>
    </div>
    <div class="position-relative mb-4 mb-md-0 px-2 cursor-pointer" onclick="window.open('{$link->getPageLink('experience')}','_self');">
      <img class="info-img-02 lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
           data-src="{$urls.img_url}home-info-02.jpg" alt="" width="430" height="550">
      <div class="info-text position-absolute text-white p-4">
        <h3 class="display-4">
          {l s='To live an [1]experience[/1]' d='Shop.CreathemeModules' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
        </h3>
        <p class="text">{l s='Taste, visit, enjoy.' d='Shop.CreathemeModules'}</p>
      </div>
    </div>
    <div class="position-relative px-2 cursor-pointer" onclick="window.open('{$link->getPageLink('maisonprunier')}','_self');">
      <img class="info-img-03 lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
           data-src="{$urls.img_url}home-info-01.jpg" alt="" width="430" height="550">
      <div class="info-text position-absolute text-white p-4">
        <h3 class="display-4">
          {l s='Pru[1]nier[/1].' d='Shop.CreathemeModules' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
        </h3>
        <p class="text">{l s='Discover our historical know-how.' d='Shop.CreathemeModules'}</p>
      </div>
    </div>

  </div>
</div>
<div class="section-restaurant my-5">
  <div class="card card-block p-0">
    <div class="row">

      <div class="col-lg-6 image-restaurant">
        <img class="restaurant-img lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
             data-src="{$urls.img_url}home-restaurant.jpg" alt="" width="720" height="600">
      </div>
      <div class="col-lg-6 my-auto">
        <div class="text-center text-lg-left m-xxl-4 p-5">
          <h2 class="restaurant-title position-relative display-4 mb-5 mb-xl-4 pt-xl-0 pb-5 pb-xl-0">
            <span class="circles-text position-relative">
              {l s='[1]Prunier[/1] Victor Hugo' d='Shop.CreathemeModules' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
            </span>
            <span class="circles position-absolute"></span>
            <span class="dots position-absolute hidden-md-down"></span>
          </h2>

          <span>16 Av. Victor Hugo, 75116 Paris | 01 44 17 35 85</span>
          <hr>

          <img class="restaurant-img imgOnMobile lazy mb-3 d-none" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
               data-src="{$urls.img_url}home-restaurant.jpg" alt="" width="720" height="600">
          <p class="restaurant-text text-center mb-4">{l s='Shop 02 text' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</p>
          <div class="d-flex align-items-center">
            <a href="" data-toggle="modal" data-target="#modalBookATable" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4">{l s='Book a table' d='Shop.CreathemeGlobal'}</a>
            <span class="ml-3">
              <a target="_blank" href="/modules/pruniermenu/pdfs/prunier_victor_hugo_menu{if Context::getContext()->language->id != 1}_en{/if}.pdf"><u>{l s='restaurant menu' d='Shop.CreathemeGlobal'}</u></a>
            </span>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>

<div class="modal fade" id="modalBookATableMadeleine" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
      </div>
    </div>
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
