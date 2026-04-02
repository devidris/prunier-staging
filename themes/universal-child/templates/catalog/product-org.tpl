{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file=$layout}

{if $ps_version < '1.7.8.0'}
  {block name='head_seo' prepend}
    <link rel="canonical" href="{$product.canonical_url}">
  {/block}
{/if}

{block name='head' append}
  <meta name="twitter:card" content="summary_large_image">
  <meta property="og:type" content="product">
  <meta property="og:url" content="{$urls.current_url}">
  <meta property="og:title" content="{$page.meta.title}">
  <meta property="og:description" content="{$page.meta.description}">
  {if $product.cover}
    <meta property="og:image" content="{$product.cover.bySize.large_default.url}">
  {/if}
  <meta property="og:site_name" content="{$shop.name}">
  {if $product.show_price}
    <meta property="product:price:amount" content="{$product.price_amount}">
    <meta property="product:price:currency" content="{$currency.iso_code}">
  {/if}
{/block}

{block name='page_header_container'}{/block}

{block name='content'}
  <section id="main" itemscope itemtype="https://schema.org/Product">
    <meta itemprop="url" content="{$product.canonical_url}">

    <section class="product-detail-primary mb-3">
      <div class="row product-container js-product-container">

        <div class="product-images col-md-6 col-xl-5">
          {block name='product_cover_thumbnails'}
            {include file='catalog/_partials/product-cover-thumbnails.tpl'}
          {/block}
        </div>

        <div class="product-info col-md-6 col-xl-7">
          {block name='product_title'}
            <h1 class="product-title" itemprop="name">{$product.name}</h1>
          {/block}

          {block name='product_prices'}
            {include file='catalog/_partials/product-prices.tpl'}
          {/block}

          {block name='product_buy'}
            <div class="product-actions js-product-actions">
              <form id="add-to-cart-or-refresh" method="post" action="{$urls.pages.cart}">
                <input name="token" type="hidden" value="{$static_token}">
                <input id="product_page_product_id" name="id_product" type="hidden" value="{$product.id}">
                <input class="js-product-customization-id" id="product_customization_id" name="id_customization" type="hidden" value="{$product.id_customization}">

                {block name='product_variants'}
                  {include file='catalog/_partials/product-variants.tpl'}
                {/block}

                {block name='product_pack'}
                  {if $packItems}
                    <section class="product-pack border-bottom py-3">
                      <p class="font-weight-bold">{l s='Pack content' d='Shop.CreathemeCatalog'}</p>
                      {foreach from=$packItems item=product_pack}
                        {block name='product_miniature'}
                          {include file='catalog/_partials/miniatures/pack-product.tpl' product=$product_pack showPackProductsPrice=$product.show_price}
                        {/block}
                      {/foreach}
                    </section>
                  {/if}
                {/block}

                {block name='product_discounts'}
                  {include file='catalog/_partials/product-discounts.tpl'}
                {/block}

                {if $product.add_to_cart_url}
                  {block name='product_add_to_cart'}
                    {include file='catalog/_partials/product-add-to-cart.tpl'}
                  {/block}
                {/if}

                {block name='product_out_of_stock'}
                  <div class="product-out-of-stock">{hook h='actionProductOutOfStock' product=$product}</div>
                {/block}

                {block name='product_additional_info'}
                  {include file='catalog/_partials/product-additional-info.tpl'}
                {/block}

                {block name='product_refresh'}
                  <input class="product-refresh hidden" name="refresh" type="submit" value="{l s='Refresh' d='Shop.CreathemeCatalog'}">
                {/block}
              </form>
            </div>
          {/block}

          <div class="product-information">
            <div class="row">
              {assign var=productfeatures value=0}
              {foreach from=$product.features item=feature}
                {if !in_array($feature.name, array("Allergènes", "Ingrédient(s)", "Valeurs énergétiques (Kcal)", "Valeurs énergétiques (K)", "Protéines (g)", "Matières grasses (g) dont acides gras saturés (g)", "Glucides (g) dont sucres (g)", "Sel (g)"))}
                  {assign var=productfeatures value=1}
                {/if}
              {/foreach}
              {* <div class="{if $productfeatures}col-lg-6{else}col-lg-11{/if}"> *}
              <div class="col-lg-11">
                {block name='product_description_short'}
                  <div class="product-description-short border-top border-bottom py-3" id="product-description-short-{$product.id}"
                      itemprop="description">{$product.description_short nofilter}</div>
                {/block}
              </div>

              <div class="{if $product.features}col-lg-6{else}col-lg-1{/if}">
                {block name='product_details'}
                  {include file='catalog/_partials/product-details.tpl'}
                {/block}
              </div>
            </div>

            {block name='product_customization'}
              {if $product.is_customizable && count($product.customizations.fields)}
                {include file='catalog/_partials/product-customization.tpl' customizations=$product.customizations}
              {/if}
            {/block}

            
          </div>
        </div>

      </div>
    </section>

    <div class="product-navigation clearfix" style="margin-bottom:20px; display:flex;justify-content:flex-end">
      {if $prev_product}
        <a title="{$prev_product.name}" class="btn btn-default" href="{$link->getProductLink($prev_product.id_product, $prev_product.link_rewrite)}">{l s='Produit précédent'}</a>
      {/if}
      {if $next_product}
        <a title="{$next_product.name}" class="btn btn-default" href="{$link->getProductLink($next_product.id_product, $next_product.link_rewrite)}">{l s='Produit suivant'}</a>
      {/if}
    </div>

    {* {block name='hook_display_reassurance'}{hook h='displayReassurance'}{/block} *}
{*{$product|var_dump}*}
    {if $product.description || $product.attachments || $product.extraContent}
      <section class="product-detail-secondary card card-block mb-3">
        <div class="row">
          {if $product.description || $product.attachments || $product.extraContent}
            <div class="col-12">
              {block name='product_tabs'}
                <div class="tabs">
                  <ul class="nav nav-tabs">
                    {if $product.description}
                      <li class="nav-item h3">
                        <a class="nav-link {if $product.description}active js-product-nav-active{/if}" href="#description"
                           data-toggle="tab">{l s='Description' d='Shop.CreathemeCatalog'}</a>
                      </li>
                    {/if}
                    {if $product.attachments}
                      <li class="nav-item h3">
                        <a class="nav-link {if !$product.description}active js-product-nav-active{/if}" href="#attachments"
                           data-toggle="tab">{l s='Downloads' d='Shop.CreathemeCatalog'}</a>
                      </li>
                    {/if}
                    {foreach from=$product.extraContent item=extra key=extraKey}
                      <li class="nav-item h3">
                        <a class="nav-link" href="#extra-{$extraKey}" data-toggle="tab">{$extra.title}</a>
                      </li>
                    {/foreach}
                  </ul>

                  <div class="tab-content" id="tab-content">
                    <div class="tab-pane fade show {if $product.description}active js-product-tab-active{/if}" id="description">
                      {block name='product_description'}
                        <div class="product-description">{$product.description nofilter}</div>
                      {/block}
                    </div>

                    {block name='product_attachments'}
                      {if $product.attachments}
                        <div class="tab-pane fade show {if !$product.description}active{/if}" id="attachments">
                          <section class="product-attachments">
                            {foreach from=$product.attachments item=attachment name=attachments}
                              <div class="attachment {if !$smarty.foreach.attachments.last}mb-3{/if}">
                                <p class="attachment-title h5 mb-1">{$attachment.name}</p>
                                <p class="attachment-description mb-1">{$attachment.description}</p>
                                {assign var=url value={url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}}
                                <span class="text-primary" data-ob="{$url|base64_encode}">
                                  {l s='Download' d='Shop.CreathemeCatalog'} ({$attachment.file_size_formatted})
                                </span>
                              </div>
                            {/foreach}
                          </section>
                        </div>
                      {/if}
                    {/block}

                    {foreach from=$product.extraContent item=extra key=extraKey}
                      <div class="tab-pane fade show {$extra.attr.class}" id="extra-{$extraKey}"
                           {foreach $extra.attr as $key => $val}{$key}="{$val}"{/foreach}>{$extra.content nofilter}</div>
                    {/foreach}
                  </div>
                </div>
              {/block}

            </div>
          {/if}

        </div>
      </section>
    {/if}

    {block name='product_accessories'}
      {if $accessories}
        <section class="product-accessories products-carousel mb-3">
          <p class="products-carousel-title h1 mb-4">{l s='You might also like' d='Shop.CreathemeCatalog'}</p>
          <div class="products-carousel-content position-relative px-4">
            <div class="owl-carousel d-flex justify-content-around">
              {foreach from=$accessories item=product_accessory}
                {include file='catalog/_partials/miniatures/carousel-product.tpl' product=$product_accessory}
              {/foreach}
            </div>
          </div>
        </section>
      {/if}
    {/block}


    {hook h='displayProductElementor'}

    {hook h='displayServirLeCaviar'}

    {block name='product_footer'}{hook h='displayFooterProduct' product=$product category=$category}{/block}

    {block name='product_images_modal'}
      {include file='catalog/_partials/product-images-modal.tpl'}
    {/block}

  </section>
{/block}
