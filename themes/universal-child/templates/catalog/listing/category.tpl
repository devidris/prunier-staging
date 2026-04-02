{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='catalog/listing/product-list.tpl'}

{block name='page_header_container'}
  <header class="page-header position-relative text-center text-white overflow-hidden flex-shrink-0 py-5">
    <div class="container">

      {if $category.image}
        <img class="header-cover position-absolute" src="{$category.image.bySize.category_default.url}" alt="{$category.name}" loading="lazy"
             width="{$category.image.bySize.category_default.width}" height="{$category.image.bySize.category_default.height}">
      {/if}

      <div class="header-text container position-relative my-5 py-5">
        <h1 class="display-4 mb-3">{$category.name}</h1>
        <div class="header-text-content h4 mx-auto mb-5">{$category.description nofilter}</div>
        <div class="header-link mb-4">
          <a class="position-relative font-weight-bold text-white text-uppercase" href="#read">{l s='Discover' d='Shop.CreathemeCatalog'}</a>
        </div>
      </div>

    </div>
  </header>
{* 
  <div class="container">
    <div class="speedLinkCategoryBloc">
        <span>Accès <strong>rapide</strong></span>
        <hr>
        <div class="overflowOnMobile">
            {if Context::getContext()->language->id != 1}
                <a href="#our-ossetra-caviars" class="speedLinkCategory">Caviar <strong>Osciètre</strong></a>
                <a href="#our-baeri-caviars" class="speedLinkCategory">Caviar <strong>Baeri</strong></a>
                <a href="#prunier-products" class="speedLinkCategory">Prunier <strong>products</strong></a>
                <a href="#our-selection" class="speedLinkCategory"><strong>Balik salmon</strong> selection</a>
            {else}
                <a href="#nos-caviars-oscietre" class="speedLinkCategory">Caviar <strong>Osciètre</strong></a>
                <a href="#nos-caviars-baeri" class="speedLinkCategory">Caviar <strong>Baeri</strong></a>
                <a href="#produits-prunier" class="speedLinkCategory">Produits <strong>Prunier</strong></a>
                <a href="#notre-selection" class="speedLinkCategory">Sélection <strong>saumon Balik</strong></a>
            {/if}
        </div>
    </div> *}

      {*
      <div class="row lovebox">
          <div class="col-md-5">
            <img src="/img/boitealllove.png" alt="Prunier x Yves Saint Laurent - Editions limitées">
          </div>
          <div class="col-md-6 offset-1 my-auto">
              <h3>Prunier Caviar x Yves Saint Laurent</h3>
              <span>{l s='LIMITED EDITION UNTIL MARCH 31, 2023' d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</span>
              <p>
                  {l s="Prunier invites you to choose one of its limited editions illustrated by Yves Saint Laurent.[1][1]From 1970, Yves Saint Laurent would send his New Year's wishes in the form of original works based on the word : Love. As Prunier caviar fan, the couturier agreed to allow Prunier to use the vintage illustrations on its caviar tins, and to regularly reissue them. This collection is only available until March 2023! [1][1]This year, the tins are filled with new Osciètre caviar, the most prized caviar among connoisseurs all over the world." d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<br/>"]}
              </p>

              <a href="/fr/boutique-en-ligne/99-caviar-prunier-oscietre.html" class="btn btn-outline-primary rounded-0 text-uppercase py-3 px-5">{l s='[1]Choose[/1] my limited edition' d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</a>
          </div>
      </div>
        *}

{* 
    {assign var=catparent value=$category->getBreadcrumbLinks()} *}
    {* {$category.id_parent|@var_dump} *}
    {assign var=linkparent value=$link->getCategoryLink($category.id_parent)}
    {assign var=isparentactu value=$linkparent|strpos:'actualites'}
    

    {assign var=cat value="{'displayCategorie'}{$category.link_rewrite|replace:'-':''}"}
    {hook h=$cat}

    {hook h='categoryListing'}

    {hook h='displayCategoryElementor'}

    {if $isparentactu}
      <div class="text-center mb-5 mt-5">
        <a href="{$category.id_parent}-actualites" style="color:#27B7B1">RETOUR</a>
      </div>
    {/if}

    
    
    {* {$cat|@var_dump} *}

    

    {* {if $category.name == 'Épicerie de la mer'}
      {hook h="displayCategorieEpicerieDeLaMer"}
    {/if} *}
  </div>
{/block}

