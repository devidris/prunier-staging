{*
 * 2008 - 2020 (c) Prestablog
 *
 * MODULE PrestaBlog
 *
 * @author    Prestablog
 * @copyright Copyright (c) permanent, Prestablog
 * @license   Commercial
 *}

<!-- Module Presta Blog -->
<div id="blog_article_linked" class="product-accessories products-carousel mt-5 mb-5">
   <h3 class="products-carousel-title h1 mb-4">{l s='Related articles on blog' mod='prestablog'}</h3>
   <div class="products-carousel-content products position-relative px-4">
      {if $listeNewsLinked}
         <ul class="owl-carousel list-unstyled d-flex justify-content-around">
            {foreach from=$listeNewsLinked item=Item name=myLoop}
                  <li class="mx-2">
                     <div class="p-3">
                        <div class="mb-3">
                           <a href="{$Item.url|escape:'html':'UTF-8'}">
                              {if $Item.image_presente|intval == 1}<img src="{$prestablog_theme_upimg|escape:'html':'UTF-8'}thumb_{$Item.id|intval}.jpg?{$md5pic|escape:'htmlall':'UTF-8'}" alt="{$Item.title|escape:'htmlall':'UTF-8'}" />{/if}
                           </a>
                        </div>
                        <p class="h4 font-weight-bold text-center mb-0">
                           <a href="{$Item.url|escape:'html':'UTF-8'}">
                              {$Item.title|escape:'htmlall':'UTF-8'}
                           </a>
                        </p>
                        {if isset($listeNewsLinked)}
                           <div class="product-actions d-flex" style="justify-content: center;">
                              <a href="{$Item.url|escape:'htmlall':'UTF-8'}" class="product-discover">
                                 {l s='Read more' mod='prestablog'}
                              </a>
                           </div>
                        {/if}
                     </div>
                  </li>
               {if !$smarty.foreach.myLoop.last}{/if}
            {/foreach}
         </ul>
      {else}
         <p>{l s='No related articles on blog' mod='prestablog'}</p>
      {/if}
   </div>
</div>
<!-- /Module Presta Blog -->
