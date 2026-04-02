<section class="crossselling products-carousel mb-3">

    <p class="products-carousel-title h1 mb-4">
        {if !empty($generic)}
            {l s='You might also like' d='Shop.CreathemeCatalog'}
        {else}
            {l s='Customers who bought this product also bought:' d='Shop.CreathemeModules'}
        {/if}
    </p>

    <div class="products-carousel-content position-relative px-4">
        <div class="owl-carousel d-flex justify-content-around">
            {foreach from=$products item=product}
                {include file='catalog/_partials/miniatures/carousel-product.tpl' product=$product}
            {/foreach}
        </div>
    </div>

</section>