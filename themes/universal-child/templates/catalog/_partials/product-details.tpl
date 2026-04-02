{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div class="js-product-details" id="product-details" data-product="{$product.embedded_attributes|json_encode}">

  {block name='product_features'}
    {if $product.features}
      <section class="product-features mb-2">
        <!--<p class="product-details-title h3 mb-3 py-2">{l s='Data sheet' d='Shop.CreathemeCatalog'}</p>-->
        <dl class="data-sheet d-flex flex-wrap justify-content-between m-0">
          {foreach from=$product.features item=feature}
            {if !in_array($feature.name, array("Allergènes", "Ingrédient(s)", "Valeurs énergétiques (Kcal)", "Valeurs énergétiques (K)", "Protéines (g)", "Matières grasses (g) dont acides gras saturés (g)", "Glucides (g) dont sucres (g)", "Sel (g)"))}
              <dt class="name mb-1 p-2">{$feature.name}</dt>
              <dd class="value mb-1 p-2">{$feature.value}</dd>
            {/if}
          {/foreach}
        </dl>
      </section>
    {/if}
  {/block}

  {*{block name='product_specific_references'}
    {if isset($product.specific_references) && $product.specific_references}
      <section class="product-features mb-2">
        <p class="product-details-title h3 mb-3 py-2">{l s='Specific references' d='Shop.CreathemeCatalog'}</p>
        <dl class="data-sheet d-flex flex-wrap justify-content-between m-0">
          {foreach from=$product.specific_references item=reference key=key}
            <dt class="name mb-1 p-2">{$key}</dt>
            <dd class="value mb-1 p-2">{$reference}</dd>
          {/foreach}
        </dl>
      </section>
    {/if}
  {/block}*}

</div>
