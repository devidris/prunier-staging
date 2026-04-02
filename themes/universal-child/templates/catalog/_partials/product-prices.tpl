{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div class="product-prices js-product-prices position-relative mt-4 mb-2">

  {block name='product_manufacturer'}
    {if isset($product_manufacturer->id)}
      <div class="product-manufacturer position-absolute">
        <meta itemprop="brand" content="{$product_manufacturer->name}">
      </div>
    {/if}
  {/block}

  {if $product.show_price}

    {block name='product_price'}
      <div class="product-price {if $product.has_discount}has-discount{/if}" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
        <meta itemprop="url" content="{$product.url}">
        <meta itemprop="priceCurrency" content="{$currency.iso_code}">
        {if isset($product.specific_prices.to) && $product.specific_prices.to != '0000-00-00 00:00:00'}
          <meta itemprop="priceValidUntil" content="{$product.specific_prices.to|date_format:"%Y-%m-%d"}">
        {else}
          <meta itemprop="priceValidUntil" content="{"+1 year"|date_format:"%Y-%m-%d"}">
        {/if}
        <link itemprop="availability" href="{$product.seo_availability}">
        <div class="current-price">
          {block name='product_discount'}
            {if $product.has_discount}
              <div class="product-discount">
                {hook h='displayProductPriceBlock' product=$product type='old_price'}
                <span class="regular-price" aria-label="{l s='Regular price' d='Shop.CreathemeCatalog'}">{$product.regular_price}</span>
                {if $product.discount_type === 'percentage'}
                  <span class="discount-percentage discount text-primary ml-2">
                    {l s='Save %percentage%' d='Shop.CreathemeCatalog' sprintf=['%percentage%' => $product.discount_percentage_absolute]}
                  </span>
                {elseif $product.discount_type === 'amount'}
                  <span class="discount-amount discount text-primary ml-2">
                    {l s='Save %amount%' d='Shop.CreathemeCatalog' sprintf=['%amount%' => $product.discount_to_display]}
                  </span>
                {/if}
              </div>
            {/if}
          {/block}

          <span class="price" itemprop="price" content="{(isset($product.rounded_display_price)) ? $product.rounded_display_price : $product.price_amount}"
                aria-label="{l s='Price' d='Shop.CreathemeCatalog'}">
            {capture name='custom_price'}{hook h='displayProductPriceBlock' product=$product type='custom_price' hook_origin='product_sheet'}{/capture}
            {if $smarty.capture.custom_price !== ''}
              {$smarty.capture.custom_price nofilter}
            {else}
              {$product.price}
            {/if}
          </span>
          {if $configuration.display_taxes_label && (!isset($configuration.taxes_enabled) || $configuration.taxes_enabled)}
            <span class="tax-label">{$product.labels.tax_long}</span>
          {/if}

          {block name='product_without_taxes'}
            {if $priceDisplay == 2}
              <div class="product-without-taxes mb-1">
                {l s='%price% tax excl.' d='Shop.CreathemeCatalog' sprintf=['%price%' => $product.price_tax_exc]}
              </div>
            {/if}
          {/block}

          {block name='product_unit_price'}
            {if $displayUnitPrice}
              <div class="product-unit-price font-weight-bold mt-1">
                {l s='(%unit_price%)' d='Shop.CreathemeCatalog' sprintf=['%unit_price%' => $product.unit_price_full]}
              </div>
            {/if}
            <div id="prunier-price-per-kg" class="product-unit-price font-weight-bold mt-1" style="display:none;"></div>
          {/block}

          {block name='product_pack_price'}{*
            {if $displayPackPrice}
              <div class="product-pack-price mt-1">
                {l s='Instead of %price%' d='Shop.CreathemeCatalog' sprintf=['%price%' => $noPackPrice]}
              </div>
            {/if}
           *}{/block}
        </div>
      </div>
    {/block}

    <div class="product-price-info">
      {block name='product_ecotax'}
        {if $product.ecotax.amount > 0}
          <div class="price-ecotax mt-3">
            {l s='Including %amount% for ecotax' d='Shop.CreathemeCatalog' sprintf=['%amount%' => $product.ecotax.value]}
            {if $product.has_discount}{l s='(not impacted by the discount)' d='Shop.CreathemeCatalog'}{/if}
          </div>
        {/if}
      {/block}

      {hook h='displayProductPriceBlock' product=$product type='weight' hook_origin='product_sheet'}

      <div class="shipping-delivery-label">
        {hook h='displayProductPriceBlock' product=$product type='price'}
        {hook h='displayProductPriceBlock' product=$product type='after_price'}
        {if $product.is_virtual	== 0}
          {if isset($product.additional_delivery_times) && $product.additional_delivery_times == 1}
            {if $product.delivery_information}<span class="delivery-information">{$product.delivery_information}</span>{/if}
          {elseif isset($product.additional_delivery_times) && $product.additional_delivery_times == 2}
            {if $product.quantity > 0}
              <span class="delivery-information">{$product.delivery_in_stock}</span>
            {elseif $product.quantity <= 0 && $product.add_to_cart_url}
              <span class="delivery-information">{$product.delivery_out_stock}</span>
            {/if}
          {/if}
        {/if}
      </div>
    </div>

  {/if}

</div>
