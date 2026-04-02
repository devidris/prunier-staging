{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div class="modal fade" id="blockcart-modal" tabindex="-1" role="dialog" aria-labelledby="modal-label" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content p-3">

      <p class="modal-title h1 display-4 text-center mt-3 mx-3" id="modal-label">{l s='Product added to your cart' d='Shop.CreathemeModules'}</p>

      <div class="modal-body">
        <div class="product-details mb-3">
          <div class="row align-items-center">

            <div class="col-sm-3 text-center text-sm-left mb-3 mb-sm-0">
              {assign var=cover value=(isset($product.default_image)) ? $product.default_image : $product.cover}
              {if $cover}
                <img class="product-image img-thumbnail" src="{$cover.bySize.medium_default.url}"
                     alt="{if $cover.legend}{$cover.legend}{else}{$product.name}{/if}" loading="lazy"
                     width="{$cover.bySize.medium_default.width}" height="{$cover.bySize.medium_default.height}">
              {elseif isset($urls.no_picture_image)}
                <img class="product-image img-thumbnail" src="{$urls.no_picture_image.bySize.medium_default.url}" alt="" loading="lazy"
                     width="{$urls.no_picture_image.bySize.medium_default.width}" height="{$urls.no_picture_image.bySize.medium_default.height}">
              {/if}
            </div>

            <div class="col-sm-6 text-center text-sm-left mb-3 mb-sm-0">
              <p class="product-name h3 font-weight-bold">{$product.name}</p>
              {foreach from=$product.attributes item=property_value key=property}
                <div class="product-attributes"><strong>{$property} :</strong> {$property_value}</div>
              {/foreach}
            </div>

            <div class="col-sm-3 text-center">
              <p class="product-price mb-0">{$product.price}</p>
              {hook h='displayProductPriceBlock' product=$product type='unit_price'}
              <div class="product-quantity">{l s='Quantity:' d='Shop.CreathemeModules'} {$product.cart_quantity}</div>
            </div>

          </div>
        </div>

        <div class="cart-content mb-3 p-4">
          <p class="cart-products-count mb-3">
            {if $cart.products_count > 1}
              {l s='There are %products_count% items in your cart.' d='Shop.CreathemeModules' sprintf=['%products_count%' => $cart.products_count]}
            {else}
              {l s='There is %products_count% item in your cart.' d='Shop.CreathemeModules' sprintf=['%products_count%' => $cart.products_count]}
            {/if}
          </p>

          <div class="d-flex justify-content-between">
            <strong>{l s='Total products:' d='Shop.CreathemeModules'}</strong>
            <span class="value">{$cart.subtotals.products.value}</span>
          </div>

          {if $cart.subtotals.shipping.value}
            <div class="d-flex justify-content-between">
              {l s='Shipping:' d='Shop.CreathemeModules'}
              <span class="text-right">
                <span class="value">{$cart.subtotals.shipping.value}</span>
                <small class="d-block">{hook h='displayCheckoutSubtotalDetails' subtotal=$cart.subtotals.shipping}</small>
              </span>
            </div>
          {/if}

          {if !$configuration.display_prices_tax_incl && $configuration.taxes_enabled}
            <div class="d-flex justify-content-between my-2">
              {$cart.totals.total.label} {$cart.labels.tax_short} :
              <span class="value">{$cart.totals.total.value}</span>
            </div>
          {/if}

          <div class="product-total d-flex justify-content-between mt-2">
            {if !$configuration.display_prices_tax_incl && $configuration.taxes_enabled}
              <strong class="text-uppercase">{$cart.totals.total_including_tax.label} :</strong>
              <span class="value">{$cart.totals.total_including_tax.value}</span>
            {else}
              <strong class="text-uppercase">
                {$cart.totals.total.label}
                {if !isset($configuration.taxes_enabled) || $configuration.taxes_enabled}{$cart.labels.tax_short}{/if} :
              </strong>
              <span class="value">{$cart.totals.total.value}</span>
            {/if}
          </div>

          {if $cart.subtotals.tax}
            <div class="product-tax d-flex justify-content-between">
              {$cart.subtotals.tax.label} :
              <span class="value">{$cart.subtotals.tax.value}</span>
            </div>
          {/if}
        </div>

        {hook h='displayCartModalContent' product=$product}

        <div class="cart-content-btn row">
          <div class="col-sm-6">
            <button class="btn btn-block btn-outline-primary btn-black rounded-0 font-weight-bold text-uppercase py-3 px-4" type="button" data-dismiss="modal">{l s='Continue shopping' d='Shop.CreathemeModules'}</button>
          </div>
          <div class="col-sm-6">
            <span class="btn btn-block btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4" data-ob="{$cart_url|base64_encode}">{l s='Proceed to checkout' d='Shop.CreathemeModules'}</span>
          </div>
        </div>

        {hook h='displayCartModalFooter' product=$product}
      </div>

    </div>
  </div>
</div>
