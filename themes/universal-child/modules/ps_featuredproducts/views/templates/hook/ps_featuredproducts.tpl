{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<section class="featured-products">

  <h2 class="display-4 text-center mt-3 mb-5 pb-5">
    <span class="position-relative">
      <span class="circles-text position-relative">
        {l s='Our [1]French caviar[/1]' d='Shop.CreathemeModules' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
      </span>
      <span class="circles position-absolute"></span>
    </span>
  </h2>

  <div class="products row align-items-center">
    {foreach from=$products item=product}
      {include file='catalog/_partials/miniatures/product.tpl' product=$product}
    {/foreach}
  </div>

</section>
