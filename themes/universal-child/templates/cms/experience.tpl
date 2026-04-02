{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='page.tpl'}

{block name='page_header_container'}
  <div style="text-align: center;position:relative;" class="header-container">
    <video style="width: 100%;" class="hidden-mobile" autoplay="" muted="" loop="" playsinline="" id="header_1600"> <source data-src="{$urls.img_url}video-experience.mp4" src="{$urls.img_url}video-experience.mp4"> </video>
    <div id="h-content" style="position: absolute;
    top:50%;
    left:50%;
     transform: translate(-50%, -50%);">
      <span class="circles position-absolute"></span>
      <h1 class="display-3 mb-3 text-white">Expériences Prunier</h1>
    </div>
  </div>

{/block}

{block name='page_content_container'}
  {if $notification}
    <div class="alert alert-success text-center">
      {l s='[1]Thank you for your experience request.[/1] A Prunier expert will call you as soon as possible.' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
    </div>
  {/if}
  <!-- Modal tasting restaurant -->
  <div class="modal fade" id="modalBookGeneral" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">

        <div class="modal-body">
          <h2 class="display-5">{l s='Book an [1]experience[/1]' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
          <p>{l s='Fill out the form below to book an experience. An expert will call you back as soon as possible.' d='Shop.CreathemeGlobal'}</p>
          <hr>
          <div class="text-center">
            {l s="Available soon." d='Shop.CreathemeGlobal'}
          </div>
          <form method="POST" action="" id="target" class="d-none">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control" id="exampleInputEmail1" name="firstname" placeholder="{l s='Firstname' d='Shop.CreathemeGlobal'}" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <input type="text" class="form-control" id="exampleInputPassword1" name="lastname" placeholder="{l s='Lastname' d='Shop.CreathemeGlobal'}" required>
                </div>
              </div>
            </div>
            <div class="form-group">
              <input type="email" class="form-control" id="exampleInputPassword1" name="email" placeholder="{l s='Email' d='Shop.CreathemeGlobal'}" required>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" id="exampleInputPassword1" name="phone" placeholder="{l s='Phone number' d='Shop.CreathemeGlobal'}" required>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <input type="number" class="form-control" id="exampleInputPassword1" name="number" placeholder="{l s='Number of people' d='Shop.CreathemeGlobal'}" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <input type="date" class="form-control" id="exampleInputPassword1" name="date" placeholder="{l s='Desired date' d='Shop.CreathemeGlobal'}" required>
                </div>
              </div>
            </div>
            <div class="text-center mt-2">
              <input type="hidden" value="test" id="experienceName" name="experience">
              <button type="submit" class="btn btn-block btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4">{l s='Validate' d='Shop.CreathemeGlobal'}</button>
              <small id="emailHelp" class="form-text text-muted mt-3">{l s='A Prunier expert will call you back as soon as possible.' d='Shop.CreathemeGlobal'}</small>
            </div>
          </form>
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

  <div style="background:#FDFAF6;margin-top: 80px;">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div style="background-image: url('https://zupimages.net/up/21/50/1c06.png');">
            <img src="{$urls.img_url}gift-illustration.png" alt="{l s='Gift card' d='Shop.CreathemeGlobal'}">
          </div>
        </div>
        <div class="col-md-4 my-auto">
          <div>
            <h2 class="display-4">{l s='Gift [1]card[/1]' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
            <p style="line-height: 29px;">
              {l s="Offer a Prunier gift card to introduce your loved ones to the art of French caviar, salmon, tarama and the entire Prunier selection. Can be used online." d='Shop.CreathemeGlobal'}
            </p>
            <a href="/fr/carte-cadeau" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4">{l s='Offer a gift card' d='Shop.CreathemeGlobal'}</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container sm-container" style="margin-top: 80px;">

    <div class="row">
      <div class="col-md-6 order-3 order-md-1">
        <h2 class="display-4">{l s='Private caviar [1]tasting[/1]' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
        <span>16 Av. Victor Hugo, 75116 Paris</span>
        <p class="mt-3 text-justify" style="line-height: 29px;">
          {l s='experience_text_caviar_tasting' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
        <a href="" data-toggle="modal" data-target="#modalBookGeneral" data-type="tasting" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4 bookable" data-experience="Dégustation de caviar à Victor Hugo">{l s='Discover the tastings' d='Shop.CreathemeGlobal'}</a>
      </div>
      <div class="col-6 col-md-3 order-1 order-md-2">
        <img src="{$urls.img_url}exp-01.jpg" class="img-fluid" alt="">
      </div>
      <div class="col-6 col-md-3 order-2 order-md-3" style="margin-top: 50px;">
        <img src="{$urls.img_url}exp-02.jpg" class="img-fluid" alt="">
      </div>
    </div>
  </div>

  <div style="background:#FDFAF6;padding: 50px 0 80px;margin-top: 80px;">
    <div class="container sm-container booktable-container">
      <div class="row mt-5">
        <div class="col-md-6 my-auto">
          <img src="{$urls.img_url}exp62.jpg" class="img-fluid" alt="">
        </div>
        <div class="col-md-6">
          <h2 class="display-4">{l s='Book a table at the [1]restaurant[/1]' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
          <span>16 Av. Victor Hugo, 75116 Paris</span>
          <p class="mt-3 text-justify" style="line-height: 29px;">
            {l s='Shop 02 text' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}
          </p>
          <div class="d-flex align-items-center">
            <a href="" data-toggle="modal" data-target="#modalBookATable" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4">{l s='Book a table' d='Shop.CreathemeGlobal'}</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="salon-prive"></div>

  <div class="container sm-container lounge-container" style="margin-top: 80px;">
    <div class="row">
      <div class="col-md-6 order-3 order-md-1">


        <h2 class="manufacture-title position-relative display-4 mt-5 mt-md-4 pt-3 pt-md-0">
        <span class="circles-text position-relative">
          {l s='Private [1]lounge[/1]' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
        </span>
          <span class="circles position-absolute"></span>
          <span class="dots position-absolute hidden-md-down"></span>
        </h2>

        <h2 class="display-4"></h2>
        <span>16 Av. Victor Hugo, 75116 Paris</span>
        <p class="mt-3 text-justify" style="line-height: 29px;">
          {l s='experience_text_private_lounge' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
        <a href="" data-toggle="modal" data-target="#modalBookGeneral" data-type="lounge" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4 bookable" data-experience="Réservation de salon privé à Victor Hugo">{l s='Book a private lounge' d='Shop.CreathemeGlobal'}</a>
      </div>
      <div class="col-6 col-md-3 order-1 order-md-2">
        <img src="{$urls.img_url}exp-022.jpg" class="img-fluid" alt="">
      </div>
      <div class="col-6 col-md-3 order-2 order-md-3" style="margin-top: 50px;">
        <img src="{$urls.img_url}exp-023.jpg" class="img-fluid" alt="">
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

{/block}
