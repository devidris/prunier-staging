{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

 <div class="row mb-3">

 <div class="col-sm-2">
   {assign var=cover value=(isset($product.default_image)) ? $product.default_image : $product.cover}
   {if $cover}
     <img class="product-image img-thumbnail" src="{$cover.bySize.small_default.url}"
          alt="{if $cover.legend}{$cover.legend}{else}{$product.name}{/if}" loading="lazy"
          width="{$cover.bySize.small_default.width}" height="{$cover.bySize.small_default.height}">
   {elseif isset($urls.no_picture_image)}
     <img class="img-thumbnail" src="{$urls.no_picture_image.bySize.small_default.url}" alt="" loading="lazy"
          width="{$urls.no_picture_image.bySize.small_default.width}" height="{$urls.no_picture_image.bySize.small_default.height}">
   {/if}
 </div>

 <div class="col-sm-9 producttextfloatl">
   <p class="mb-0 mr-2">
     <span class="product-quantity">{$product.quantity} x</span>
     <span class="product-name">{$product.name|truncate:35:'...'}</span>
   </p>
   <span class="product-price">{$product.price}</span>
 </div>

 <div class="col-sm-1 text-right">
   <a class="remove-from-cart" rel="nofollow" href="{$product.remove_from_cart_url}" title="{l s='Remove' d='Shop.CreathemeModules'}"
      data-id-product="{$product.id_product|escape:'javascript'}" data-id-product-attribute="{$product.id_product_attribute|escape:'javascript'}"
      data-link-action="delete-from-cart" data-id-customization="{$product.id_customization|escape:'javascript'}">
     {if !isset($product.is_gift) || !$product.is_gift}<i class="icon-close-thin" aria-hidden="true"></i>{/if}
   </a>
 </div>

</div>
