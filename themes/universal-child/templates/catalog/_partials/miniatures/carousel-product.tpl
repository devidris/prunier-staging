{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{block name='carousel_product_miniature_item'}
  <article class="carousel-product-miniature product-miniature text-center mx-2">
    <div class="product-block p-3">

      {block name='carousel_product_thumbnail'}
        <span class="carousel-product-thumbnail" data-ob="{$product.url|base64_encode}">
          {assign var=cover value=(isset($product.default_image)) ? $product.default_image : $product.cover}
          {if $cover}
            <img class="owl-lazy {if isset($pte_productimgborder) && $pte_productimgborder}img-thumbnail{/if}"
                src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 {$cover.bySize.home_default.width} {$cover.bySize.home_default.height}'%3E%3C/svg%3E"
                data-src="{$cover.bySize.home_default.url}" alt="{if $cover.legend}{$cover.legend}{else}{$product.name}{/if}"
                width="{$cover.bySize.home_default.width}" height="{$cover.bySize.home_default.height}">
          {elseif isset($urls.no_picture_image)}
            <img class="owl-lazy {if isset($pte_productimgborder) && $pte_productimgborder}img-thumbnail{/if}"
                src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 {$urls.no_picture_image.bySize.home_default.width} {$urls.no_picture_image.bySize.home_default.height}'%3E%3C/svg%3E"
                data-src="{$urls.no_picture_image.bySize.home_default.url}" alt=""
                width="{$urls.no_picture_image.bySize.home_default.width}" height="{$urls.no_picture_image.bySize.home_default.height}">
          {/if}
        </span>
      {/block}

      {block name='carousel_product_name'}
        <h3 class="carousel-product-title product-title position-relative h5 font-weight-bold text-center mt-2">
          <a href="{$product.url}">{$product.name}</a>
        </h3>
      {/block}

      {block name='carousel_product_description_short'}
        <div class="carousel-product-description-short product-description-short text-center mb-3">
          {$product.description_short|strip_tags|truncate:180:'...'}
        </div>
      {/block}

      {block name='carousel_product_price'}
        {if $product.show_price}
          <div class="carousel-product-price">
            <span class="price-from">{l s='From' d='Shop.CreathemeCatalog'}</span>
            <span class="price">{$product.price}</span>
            {if $product.has_discount}<span class="regular-price">{$product.regular_price}</span>{/if}
          </div>
        {/if}
      {/block}

    </div>
  </article>
{/block}
