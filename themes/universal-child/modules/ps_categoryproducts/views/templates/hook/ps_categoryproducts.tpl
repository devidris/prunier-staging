{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<section class="category-products products-carousel mt-5 pt-5">

  <h2 class="products-carousel-title display-4 text-center my-5 pb-5">
    <span class="position-relative">
      <span class="circles-text position-relative">
        {l s='[1]Also[/1] discover' d='Shop.CreathemeModules' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
      </span>
      <span class="circles position-absolute"></span>
    </span>
  </h2>

  <div class="products-carousel-content products position-relative px-4">
    <div class="owl-carousel d-flex justify-content-around">
      {foreach from=$products item=product}
        {include file='catalog/_partials/miniatures/carousel-product.tpl' product=$product}
      {/foreach}
    </div>
  </div>

</section>
