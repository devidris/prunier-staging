{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}
{extends file=$layout}
{block name='page_header_container'}
  <header class="page-header text-center flex-shrink-0 pt-5">
    <div class="container">
      <div class="header-text container">
        <h1 class="display-4 mb-3">{$listing.label}</h1>
        {if $page.meta.description}
          <div class="header-text-content h4 mx-auto">{$page.meta.description}</div>
        {/if}
      </div>
    </div>
  </header>
{/block}
{block name='content'}
<section id="main">
    {hook h='displayHeaderCategory'}
    <section id="products">
     
 {if $listing.products|count}
        {block name='product_list_top'}
          {include file='catalog/_partials/products-top.tpl' listing=$listing}
      {/block}
        	
        {block name='product_list'}
          {include file='catalog/_partials/products.tpl' listing=$listing}
        {/block}
        
        {block name='product_list_bottom'}
          {include file='catalog/_partials/products-bottom.tpl' listing=$listing}
        {/block}
        
        {block name='pagination_bottom'}
          {include file='_partials/pagination.tpl' pagination=$listing.pagination}
        {/block}
      {else}
        <div id="js-product-list-top"></div>
        <div id="js-product-list">
          {block name='no_products'}
            <p class="alert alert-warning">{l s='No products at this time.' d='Shop.CreathemeCatalog'}</p>
          {/block}
        </div>
        <div id="js-product-list-bottom"></div>
      {/if}
    </section>
    {hook h='displayFooterCategory'}
  </section>
{/block}
