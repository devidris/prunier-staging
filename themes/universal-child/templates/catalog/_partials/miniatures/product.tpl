{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{if $page.page_name == 'index' || $page.page_name == "victorhugo"}
    {assign var=col value=3}
{elseif $page.page_name == 'category' || $page.page_name == 'new-products' || $page.page_name == 'prices-drop' || $page.page_name == 'best-sales'}
  {if isset($smarty.cookies.listproducts) && $smarty.cookies.listproducts == 3}{assign var=col value=4}{/if}
  {if isset($smarty.cookies.listproducts) && $smarty.cookies.listproducts == 4}{assign var=col value=3}{/if}
  {if isset($smarty.cookies.listproducts) && $smarty.cookies.listproducts == 5}{assign var=col value=2}{/if}
{else}
  {assign var=col value=2}
{/if}

{block name='product_miniature_item'}
  <article class="product-miniature js-product-miniature col-6 col-md-{if isset($col)}{$col}{else}3{/if}"
           data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}">
    <div class="product-block">

      <div class="thumbnail-container position-relative h-auto text-center overflow-hidden">
        {block name='product_flags'}
          {foreach from=$product.flags item=flag}
            {if $flag.type == 'new'}
              <span class="{$flag.type} d-flex align-items-center position-absolute text-uppercase px-2">{l s='New' d='Shop.CreathemeCatalog'}</span>
            {/if}
          {/foreach}
        {/block}

        {if $product.show_price && $product.has_discount}
          {if $product.discount_type === 'percentage'}
            <span class="discount-percentage discount d-flex justify-content-center align-items-center position-absolute rounded-circle px-2">
              {$product.discount_percentage}
            </span>
          {elseif $product.discount_type === 'amount'}
            <span class="discount-amount discount d-flex justify-content-center align-items-center position-absolute rounded-circle px-2">
              -{$product.discount_amount}
            </span>
          {/if}
        {/if}

        {block name='product_thumbnail'}
          <span class="product-thumbnail" data-ob="{$product.url|base64_encode}">
            {assign var=cover value=(isset($product.default_image)) ? $product.default_image : $product.cover}
            {if $cover}
              <img class="product-img lazy {if isset($pte_productimgborder) && $pte_productimgborder}img-thumbnail{/if}"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   data-src="{$cover.bySize.home_default.url}" data-full-size-image-url="{$cover.bySize.large_default.url}"
                   alt="{if $cover.legend}{$cover.legend}{else}{$product.name}{/if}"
                   width="{$cover.bySize.home_default.width}" height="{$cover.bySize.home_default.height}"
                   {if $product.dwf_second_image_hover}
                   onmouseover="this.src='{$product.dwf_second_image_hover}'"
                   onmouseout="this.src='{$cover.bySize.home_default.url}'"
                   {/if}
              >
            {elseif isset($urls.no_picture_image)}
              <img class="lazy {if isset($pte_productimgborder) && $pte_productimgborder}img-thumbnail{/if}"
                   src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                   data-src="{$urls.no_picture_image.bySize.home_default.url}" alt=""
                   width="{$urls.no_picture_image.bySize.home_default.width}" height="{$urls.no_picture_image.bySize.home_default.height}">
            {/if}
          </span>
        {/block}
      </div>

      <div class="info-container w-100">
        {block name='product_name'}
          <h3 class="product-title position-relative h4 font-weight-bold text-center mt-2">
            <a href="{$product.url}">{$product.name}</a>
          </h3>
        {/block}

        <div class="text-center mb-2">
          {assign var='catname' value=Category::getCategoryInformations(array($product.id_category_default))}
          <span class="badge-category badge badge-primary rounded-0 font-weight-normal text-uppercase">{$catname[$product.id_category_default].name}</span>
        </div>

        {block name='product_description_short'}
          <div class="product-description-short text-center mb-3">{$product.description_short|strip_tags|truncate:180:'...'}</div>
        {/block}

        {block name='product_price_and_shipping'}
          {if $product.show_price}
            <div class="product-price-and-shipping">

              <div class="product-price-shipping text-center text-uppercase">
                <span class="price-from">{l s='From' d='Shop.CreathemeCatalog'}</span>

                {hook h='displayProductPriceBlock' product=$product type='before_price'}
                <span class="price" aria-label="{l s='Price' d='Shop.CreathemeCatalog'}">
                  {capture name='custom_price'}{hook h='displayProductPriceBlock' product=$product type='custom_price' hook_origin='products_list'}{/capture}
                  {if $smarty.capture.custom_price !== ''}
                    {$smarty.capture.custom_price nofilter}
                  {else}
                    {$product.price}
                  {/if}
                </span>
		

                {hook h='displayProductPriceBlock' product=$product type='unit_price'}
                {hook h='displayProductPriceBlock' product=$product type='weight'}

                {if $product.has_discount}
                  <span class="regular-price" aria-label="{l s='Regular price' d='Shop.CreathemeCatalog'}">{$product.regular_price}</span>
                {/if}
              </div>

              <div class="product-actions d-flex">
              {* {$smarty.cookies.listbutton|@var_dump} *}
                {if 1 == 0 && !$configuration.is_catalog && (($page.page_name == 'index' && (!isset($pte_homebutton) || $pte_homebutton)) || ($page.page_name != 'index' && (!isset($smarty.cookies.listbutton) || $smarty.cookies.listbutton)))}
                  {if $product.add_to_cart_url != null && $product.available_for_order && $product.customizable == 0 && ($product.quantity > 0 || $product.allow_oosp)
                      && ($product.minimal_quantity <= 1 && (!isset($product.product_attribute_minimal_quantity) || $product.product_attribute_minimal_quantity <= 1))}
                    <form method="post" action="{url entity='cart'}">
                      <input name="token" type="hidden" value="{if isset($smarty.cookies.statictoken)}{$smarty.cookies.statictoken}{/if}">
                      <input name="id_product" type="hidden" value="{$product.id_product}">
                      <button class="add-to-cart btn shadow-none p-0 {if $ps_version >= '1.7.8.0'}add-to-cart-fix{/if}" type="submit" data-button-action="add-to-cart" data-toggle="tooltip" title="{l s='Add to cart' d='Shop.CreathemeCatalog'}"
                              aria-label="{l s='Add to cart' d='Shop.CreathemeCatalog'}">{if $ps_version < '1.7.8.0'}<i class="icon-shopping-basket-round" aria-hidden="true"></i>{/if}</button>
                    </form>
                  {else}
                    <button class="btn disabled p-0" type="button" data-toggle="tooltip" title="{l s='Add to cart' d='Shop.CreathemeCatalog'}"
                            aria-label="{l s='Add to cart' d='Shop.CreathemeCatalog'}"><i class="icon-shopping-basket-round" aria-hidden="true"></i></button>
                  {/if}
                {/if}
                <a href="{$product.url}" class="product-discover">{l s='VOIR LE PRODUIT' d='Shop.CreathemeCatalog'}</a>
              </div>

            </div>
          {/if}
        {/block}
      </div>

    </div>
  </article>
{/block}
