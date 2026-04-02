{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{block name='cart_detailed_actions'}
  <div class="checkout cart-detailed-actions js-cart-detailed-actions card-block">

    {if $cart.minimalPurchaseRequired}
      <div class="alert alert-warning" role="alert">{$cart.minimalPurchaseRequired}</div>
      <div class="text-center">
        <button class="btn btn-primary disabled px-3" type="button" disabled>{l s='Proceed to checkout' d='Shop.CreathemeCheckout'}</button>
      </div>
    {elseif empty($cart.products)}
      <div class="text-center">
        <button class="btn btn-primary disabled px-3" type="button" disabled>{l s='Proceed to checkout' d='Shop.CreathemeCheckout'}</button>
      </div>
    {else}
      <div class="text-center">
        {if $ps_version == '1.7.3.0' || $ps_version == '1.7.3.1'}
          {assign var=url value=$urls.pages.cart|cat:'?action=show&checkout'}
        {else}
          {assign var=url value=$urls.pages.order}
        {/if}
        <span class="btn btn-outline-primary btn-block rounded-0 font-weight-bold text-uppercase py-3 px-4" style="font-family: Montserrat,Arial,Helvetica,sans-serif;font-size: .875rem;" data-ob="{$url|base64_encode}">{l s='Proceed to checkout' d='Shop.CreathemeCheckout'}</span>
        {*hook h='displayExpressCheckout'*}
      </div>
    {/if}

  </div>
{/block}
