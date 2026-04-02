{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div class="position-relative ml-4" id="shopping-cart">
  <div class="blockcart" data-refresh-url="{$refresh_url}">

    <span class="shopping-cart-block d-block pointer" tabindex="0">
      <img src="{$urls.img_url}icon-cart.png" alt="" width="28" height="23">
      <span class="shopping-cart-products-count badge badge-primary rounded-circle align-bottom ml-2 px-2">{$cart.products_count}</span>
    </span>

    <div class="shopping-cart-details card card-block position-absolute hidden mt-1">
      {if $cart.products}
        {foreach from=$cart.products item=product}
          {include file='module:ps_shoppingcart/ps_shoppingcart-product-line.tpl' product=$product}
        {/foreach}
        <span class="mt-4 btn btn-block btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4" data-ob="{$cart_url|base64_encode}">{l s='Proceed to checkout' d='Shop.CreathemeModules'}</span>
      {else}
        <div class="text-center">{l s='Your cart is empty' d='Shop.CreathemeModules'}</div>
      {/if}
    </div>

  </div>
</div>
