{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file=$layout}

{block name='page_header_container'}{/block}

{block name='content'}
  <section id="main">
    <section id="content">
      <div class="cart-grid row">

        <div class="cart-grid-body col-lg-8">
          <h1 class="h1 display-4 mb-5">{l s='Shopping cart' d='Shop.CreathemeCheckout'}</h1>
          {hook h='displayShippingAmount'}
          <center><h2><strong style="color: #29b7b2;">Livraison offerte dès 130€ en France.<br>La réduction s'applique dès votre adresse en France renseignée.</h2></center></strong>               
          <div class="cart-container card">
            {block name='cart_overview'}
              {include file='checkout/_partials/cart-detailed.tpl' cart=$cart}
            {/block}
          </div>

          {if !empty($upsell_products)}
          <h1 class="h1 display-5 mb-5">{l s='Complete my cart' d='Shop.CreathemeCheckout'}</h1>
          
	  <div class="row">
         {if !empty($upsell_products)}
           {foreach $upsell_products as $upsell_product}
            <div class="text-center col-md-3 mb-3">
                <div style="background-color: #d9bf660d;">
                  <img src="{$link->getImageLink($upsell_product.link_rewrite, $upsell_product.cover_image_id, 'home_default')}">
                  <div style="padding: 0 5px;">
                    <h3 style="font-family: Cormorant,sans-serif;font-weight: 700!important;font-size: 1.1rem;" class="mt-2">{$upsell_product.name}</h3>

                    <div style="margin-bottom:10px;font-size: .765625rem;">
                      {$upsell_product.description_short|strip_tags|truncate:160:'...'}
                    </div>

                    <span style="color: #27b7b1;font-weight: bold;">{Tools::displayPrice($upsell_product.price)}</span>

                    <div class="mt-3 pb-2">
                      <form action="https://{$smarty.server.HTTP_HOST}{$smarty.server.REQUEST_URI}">
                        <input type="hidden" name="upspro" value="{$upsell_product.id_product}">
                        <button type="submit" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4 mr-1" style="font-size: 10px;padding: 0.7rem 1.1rem !important;">Ajouter au panier</button>
                      </form>

                      <div class="mt-1">
                        <a href="" class="" data-toggle="modal" data-target="#discoverUpsellProduct{$upsell_product.id_product}"><small>En savoir plus</small></a>
                      </div>
                    </div>
                  </div>
                </div>
            </div>

              <div class="modal fade" id="discoverUpsellProduct{$upsell_product.id_product}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel" style="font-size: 25px;">{$upsell_product.name}</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="row">
                        <div class="col-md-3">
                          <img src="{$link->getImageLink($upsell_product.link_rewrite, $upsell_product.cover_image_id, 'home_default')}">
                        </div>
                        <div class="col-md-9 my-auto">
                          {$upsell_product.description nofilter}
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary btn-block" data-dismiss="modal">{l s="Close"  mod='giftcard'}</button>
                    </div>
                  </div>
                </div>
              </div>

            {/foreach}
        
{/if}
  </div>
          {/if}


          {*{block name='hook_shopping_cart_footer'}{hook h='displayShoppingCartFooter'}{/block}*}
		
        </div>

        <div class="cart-grid-right col-lg-4">
          <div class="sticky-top">

            {block name='cart_summary'}
              <div class="cart-summary card">
                {block name='hook_shopping_cart'}{hook h='displayShoppingCart'}{/block}

                {block name='cart_totals'}
                  {include file='checkout/_partials/cart-detailed-totals.tpl' cart=$cart}
                {/block}

                {block name='cart_actions'}
                  {include file='checkout/_partials/cart-detailed-actions.tpl' cart=$cart}
                {/block}
              </div>
            {/block}

          </div>
        </div>

        {if is_callable(['Ps_Crossselling', 'getCartCrossSellingStatic'])}
          <div class="col-12 mt-5">
            {Ps_Crossselling::getCartCrossSellingStatic() nofilter}
          </div>
        {/if}

		    {hook h='displayShoppingCartFooter'}

      </div>
    </section>
  </section>

<script>
document.addEventListener('DOMContentLoaded', function() {
    var form = document.querySelector('form#cart-summary');
    var checkbox = document.querySelector('#custom_checkbox');

    form.addEventListener('submit', function(event) {
        if (checkbox && !checkbox.checked) {
            alert('You must agree to the terms and conditions to proceed.');
            event.preventDefault();
        }
    });
});
</script>

{/block}
