{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{if !$configuration.is_catalog}
  <div class="product-add-to-cart js-product-add-to-cart text-right">

    {block name='product_quantity'}
      <div class="product-quantity d-flex justify-content-between align-items-center">

        {if $product.available_for_order}
        <div class="qty d-flex justify-content-between align-items-center border-bottom py-3">
            <div class="control-label font-weight-bold text-uppercase">{l s='Quantity' d='Shop.CreathemeCatalog'}</div>
            <div class="control-item">
                <input class="input-group text-center" id="quantity_wanted" name="qty" aria-label="{l s='Quantity' d='Shop.CreathemeCatalog'}" type="number"
                       {if $product.quantity_wanted}value="{$product.quantity_wanted}" min="{$product.minimal_quantity}"{else}value="1" min="1"{/if}
                       inputmode="numeric" pattern="[0-9]*">
            </div>
        </div>
        {/if}

        <!-- Modal Zoom Grain -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content" style="align-items: center;background: transparent;box-shadow: none;border: none;">
              <img style="border:5px solid #dabf664f;border-radius:500px;width:400px;clip-path:ellipse(50% 50%);" src="{$product.dwf_zoom_grain}" alt="{$product.name}">
            </div>
          </div>
        </div>

{*       <div class="add">
*        {if $product.available_for_order}
*           <button class="{if $product.add_to_cart_url}add-to-cart{/if} btn btn-primary btn-block font-weight-bold text-uppercase mt-3 mb-4 p-4" type="submit"
*                  data-button-action="add-to-cart" {if !$product.add_to_cart_url}disabled{/if}>
*                 {l s='Add to cart' d='Shop.CreathemeCatalog'}
*             </button>
*         {else}
*             <button class="btn btn-primary btn-block font-weight-bold text-uppercase mt-3 mb-4 p-4" disabled>{l s="This product is sold out for the moment" d='Shop.CreathemeCatalog'}</button>
*         {/if}
*        </div>*}

<div class="add">
    {if $product.available_for_order}
        <button class="{if $product.add_to_cart_url}add-to-cart{/if} btn btn-primary btn-block font-weight-bold text-uppercase mt-3 mb-4 p-4" type="submit"
                data-button-action="add-to-cart" {if !$product.add_to_cart_url}disabled{/if}
                onclick="trackAddToCartEvent()">
            {l s='Add to cart' d='Shop.CreathemeCatalog'}
        </button>
    {else}
        <button class="btn btn-primary btn-block font-weight-bold text-uppercase mt-3 mb-4 p-4" disabled>{l s="This product is sold out for the moment" d='Shop.CreathemeCatalog'}</button>
    {/if}
</div>

<script>
    function trackAddToCartEvent() {
        // Ici, ajoutez votre code d'analyse
        // Par exemple, avec Google Analytics, cela pourrait ressembler à ceci :
         gtag('event', 'add_to_cart', {
             "items": [
                 {
                     "id": "{$product.id}",
                     "name": "{$product.name}",
                     "category": "{$product.category}",
                     "quantity": 1
                 }
             ]
         });

        // Assurez-vous de remplacer les valeurs ci-dessus par les informations pertinentes de votre produit.
    }
</script>



        {hook h='displayProductActions' product=$product}

      </div>
    {/block}

    {block name='product_minimal_quantity'}
      {if $product.available_for_order && $product.minimal_quantity > 1}
        <div class="product-minimal-quantity js-product-minimal-quantity my-2">
          {l s='The minimum purchase order quantity for the product is %quantity%.' d='Shop.CreathemeCatalog' sprintf=['%quantity%' => $product.minimal_quantity]}
        </div>
      {/if}
    {/block}

  </div>
{/if}
