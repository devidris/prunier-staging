{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='page.tpl'}

{block name='page_header_container'}
  <div style="text-align: center;
    position:relative" class="header-container">

    <video style="width: 100%;" class="hidden-mobile" autoplay="" muted="" loop="" playsinline="" id="header_1600"> <source data-src="{$urls.img_url}maison.mp4" src="{$urls.img_url}maison.mp4"> </video>
    <div id="h-content" style="position: absolute;
    top:50%;
    left:50%;
     transform: translate(-50%, -50%);">
      <span class="circles position-absolute"></span>
      <h1 class="display-3 mb-3 text-white">{l s='La maison Prunier.' d='Shop.CreathemeGlobal'}</h1>
    </div>
  </div>
{/block}

{block name='page_content_container'}
  <div class="container">


    <div class="row">
      <div class="col-md-6 my-auto">
        <div class="pr-5">
          <h2 class="display-4">{l s="Prunier, the timeless art of living over three centuries." d='Shop.CreathemeGlobal'}</h2>
          <p class="text-justify mt-3" style="line-height: 29px;font-size: 16px;">
            {l s='house_text_1' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>', '[2]' => '<br/>']}
          </p>
        </div>
      </div>
      <div class="col-md-6 my-auto">
        <div style="background-image: url('{$urls.img_url}fond-caviar.jpg');background-position: center;background-size: cover;height: 354px;">
          <div style="text-align: center;
    height: 100%;
    display: flex;
    place-content: center;
    align-items: center;"><img src="{$urls.img_url}play.svg" class="d-none" alt="Lire une vidéo"></div>
        </div>
      </div>
    </div>

    <div class="row mt-5 pt-5 speOe">
      <div class="col-6 col-md-2 my-auto text-left"><img width="100%"src="{$urls.img_url}triptik-1.gif" alt=""></div>
      <div class="col-6 col-md-2 my-auto text-left"><img width="100%" src="{$urls.img_url}triptik-2.jpg" alt=""></div>
      <div class="col-md-2 my-auto text-left"><img width="100%" class="dnm" src="{$urls.img_url}triptik-3.gif" alt=""></div>
      <div class="col-md-6">
        <div class="pl-5">
          <h2 class="display-4 loveGastro">{l s="L'amour de la gastronomie," d='Shop.CreathemeGlobal'}</h2>
          <span style="font-size: 21px;margin-top: 20px;line-height: 35px;">{l s='house_text_2' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</span>
          <p class="text-justify mt-3" style="line-height: 29px;font-size: 16px;">
            {l s='house_text_3' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
            <br/><a class="mt-4 btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4" href="{$link->getCategoryLink(2)}">{l s='Discover our caviars' d='Shop.CreathemeGlobal'}</a>
          </p>
        </div>
      </div>
    </div>

    <div class="row mt-5 pt-5">
      <div class="col-md-6 mr-0 pr-0">
        <img src="{$urls.img_url}maisonLeft.jpg" class="img-fluid" alt="">
        <p style="max-width: 400px;font-size: 50px;font-family: Cormorant,sans-serif;" class="mt-5 ml-5">{l s='house_text_4' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</p>
      </div>
      <div class="col-md-6 ml-0 pl-0">
        <img src="{$urls.img_url}maisonRight.jpg" class="img-fluid" alt="">
        <div style="max-width: 480px;" class="mt-4 ml-5">
          <p class="text-justify" style="line-height: 29px;font-size: 16px;">
            {l s='house_text_5' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
          </p>
          <a class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4" href="{$link->getCategoryLink(2)}">{l s='Discover our caviars' d='Shop.CreathemeGlobal'}</a>
        </div>
      </div>
    </div>
  </div>

  <div class="owl-carousel mt-5 pt-5" id="fresk">
    <div style="background-image: linear-gradient(to top, #00000078 45%, rgba(0, 0, 0, 0.0) 100%), url('{$urls.img_url}fresk-1-done.jpg');height: 418px;background-size: cover;background-position: center;">
      <div style="position: absolute;color: white;z-index: 1;left: 12px;bottom: 10px;text-align: center;padding-right: 10px;">
        <span style="font-family: Cormorant,sans-serif;font-size: 60px;">1872</span>
        <p style="font-size: 17px;margin-top: 20px;line-height: 25px;">
          {l s='house_car_1' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
      </div>
    </div>
    <div style="background-image: linear-gradient(to top, #00000078 45%, rgba(0, 0, 0, 0.0) 100%), url('{$urls.img_url}fresk-2-done.jpg');height: 418px;background-size: cover;background-position: center;">
      <div style="position: absolute;color: white;z-index: 1;left: 12px;bottom: 10px;text-align: center;padding-right: 10px;">
        <span style="font-family: Cormorant,sans-serif;font-size: 60px;">1875</span>
        <p style="font-size: 17px;margin-top: 20px;line-height: 25px;">
          {l s='house_car_2' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
      </div>
    </div>
    <div style="background-image: linear-gradient(to top, #00000078 45%, rgba(0, 0, 0, 0.0) 100%), url('{$urls.img_url}fresk-1.jpg');height: 418px;background-size: cover;background-position: center;">
      <div style="position: absolute;color: white;z-index: 1;left: 12px;bottom: 10px;text-align: center;padding-right: 10px;">
        <span style="font-family: Cormorant,sans-serif;font-size: 60px;">1898</span>
        <p style="font-size: 17px;margin-top: 20px;line-height: 25px;">
          {l s='house_car_3' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
      </div>
    </div>
    <div style="background-image: linear-gradient(to top, #00000078 45%, rgba(0, 0, 0, 0.0) 100%), url('{$urls.img_url}fresk-5-done.jpg');height: 418px;background-size: cover;background-position: center;">
      <div style="position: absolute;color: white;z-index: 1;left: 12px;bottom: 10px;text-align: center;padding-right: 10px;">
        <span style="font-family: Cormorant,sans-serif;font-size: 60px;">1905</span>
        <p style="font-size: 17px;margin-top: 20px;line-height: 25px;">
          {l s='house_car_4' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
      </div>
    </div>
    <div style="background-image: linear-gradient(to top, #00000078 45%, rgba(0, 0, 0, 0.0) 100%), url('{$urls.img_url}fresk-6-done.jpg');height: 418px;background-size: cover;background-position: center;">
      <div style="position: absolute;color: white;z-index: 1;left: 12px;bottom: 10px;text-align: center;padding-right: 10px;">
        <span style="font-family: Cormorant,sans-serif;font-size: 60px;">1910</span>
        <p style="font-size: 17px;margin-top: 20px;line-height: 25px;">
          {l s='house_car_5' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
      </div>
    </div>
    <div style="background-image: linear-gradient(to top, #00000078 45%, rgba(0, 0, 0, 0.0) 100%), url('{$urls.img_url}fresk-7-done.jpg');height: 418px;background-size: cover;background-position: center;">
      <div style="position: absolute;color: white;z-index: 1;left: 12px;bottom: 10px;text-align: center;padding-right: 10px;">
        <span style="font-family: Cormorant,sans-serif;font-size: 60px;">1921</span>
        <p style="font-size: 17px;margin-top: 20px;line-height: 25px;">
          {l s='house_car_6' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
      </div>
    </div>
    <div style="background-image: linear-gradient(to top, #00000078 45%, rgba(0, 0, 0, 0.0) 100%), url('{$urls.img_url}fresk-8-done.jpg');height: 418px;background-size: cover;background-position: center;">
      <div style="position: absolute;color: white;z-index: 1;left: 12px;bottom: 10px;text-align: center;padding-right: 10px;">
        <span style="font-family: Cormorant,sans-serif;font-size: 60px;">1924</span>
        <p style="font-size: 17px;margin-top: 20px;line-height: 25px;">
          {l s='house_car_7' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
      </div>
    </div>
    <div style="background-image: linear-gradient(to top, #00000078 45%, rgba(0, 0, 0, 0.0) 100%), url('{$urls.img_url}fresk-izba.jpg');height: 418px;background-size: cover;background-position: center;">
      <div style="position: absolute;color: white;z-index: 1;left: 12px;bottom: 10px;text-align: center;padding-right: 10px;">
        <span style="font-family: Cormorant,sans-serif;font-size: 60px;">1996-2000</span>
        <p style="font-size: 17px;margin-top: 20px;line-height: 25px;">
          {l s='house_car_8' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
      </div>
    </div>
    <div style="background-image: linear-gradient(to top, #00000078 45%, rgba(0, 0, 0, 0.0) 100%), url('{$urls.img_url}fresk-nouvelle-boite.jpg');height: 418px;background-size: cover;background-position: center;">
      <div style="position: absolute;color: white;z-index: 1;left: 12px;bottom: 10px;text-align: center;padding-right: 10px;">
        <span style="font-family: Cormorant,sans-serif;font-size: 60px;">2021</span>
        <p style="font-size: 17px;margin-top: 20px;line-height: 25px;">
          {l s='house_car_9' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
        </p>
      </div>
    </div>
  </div>

{/block}
