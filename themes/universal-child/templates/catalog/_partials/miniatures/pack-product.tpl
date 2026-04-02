{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{block name='pack_miniature_item'}
  <article class="pack-product-container card flex-row justify-content-between align-items-center mt-2 p-2">

    <a class="pack-product-image" href="{$product.url}">
      {assign var=cover value=(isset($product.default_image)) ? $product.default_image : $product.cover}
      {if $cover}
        <img class="lazy img-thumbnail" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
             data-src="{$cover.bySize.small_default.url}" alt="{if $cover.legend}{$cover.legend}{else}{$product.name}{/if}"
             width="{$cover.bySize.small_default.width}" height="{$cover.bySize.small_default.height}">
      {elseif isset($urls.no_picture_image)}
        <img class="lazy img-thumbnail" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
             data-src="{$urls.no_picture_image.bySize.small_default.url}" alt=""
             width="{$urls.no_picture_image.bySize.small_default.width}" height="{$urls.no_picture_image.bySize.small_default.height}">
      {/if}
    </a>

    <div class="pack-product-name px-2">{$product.name}</div>

    {if $showPackProductsPrice}
      <div class="pack-product-price text-nowrap px-2">{*$product.price*}</div>
    {/if}

    <div class="pack-product-quantity border-left font-weight-bold text-nowrap pl-3 pr-2">x {$product.pack_quantity}</div>

  </article>
{/block}
