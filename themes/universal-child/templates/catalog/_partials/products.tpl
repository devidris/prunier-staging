{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div id="js-product-list">

  <div class="products row align-items-center
              {if !isset($smarty.cookies.listdisplay) || !isset($smarty.cookies.gridorlist) && $smarty.cookies.listdisplay == 1 || isset($smarty.cookies.gridorlist) && $smarty.cookies.gridorlist == 'grid'}grid{/if}
              {if !isset($smarty.cookies.gridorlist) && isset($smarty.cookies.listdisplay) && $smarty.cookies.listdisplay == 0 || isset($smarty.cookies.gridorlist) && $smarty.cookies.gridorlist == 'list'}list{/if}">
    {foreach from=$listing.products item=product name=products}
      {block name='product_miniature'}
        {include file='catalog/_partials/miniatures/product.tpl' product=$product}
      {/block}
      {if $page.page_name != 'index' && $page.page_name != 'product'}
        {if $smarty.foreach.products.iteration%6 == 0 && $smarty.foreach.products.index%5 is even}
          <div class="product-list-block col-md-6">
            <span class="circles position-absolute hidden-md-down"></span>
            <img class="product-list-img lazy position-relative" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                 data-src="{$urls.img_url}product-list.jpg" alt="" width="663" height="403">
            <div class="product-list-text position-absolute text-white p-4">
              <h3 class="display-4">
                {l s='[1]The art[/1] of giving' d='Shop.CreathemeCatalog' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
              </h3>
              <p class="text">{l s='Discover our gift boxes.' d='Shop.CreathemeCatalog'}</p>
            </div>
          </div>
        {/if}
      {/if}
    {/foreach}
  </div>

</div>
