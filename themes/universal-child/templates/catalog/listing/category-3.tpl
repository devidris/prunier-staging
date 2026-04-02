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

  {* Section d'introduction après le header avec balisage schema.org *}
  {if $category.id == 2}
    <div class="container seo-introduction my-5" id="read" itemscope itemtype="https://schema.org/Product">
      <meta itemprop="name" content="{$category.name}">
      {if $category.image}
        <meta itemprop="image" content="{$category.image.bySize.category_default.url}">
      {/if}
      
      <div class="row">
        <div class="col-md-8 mx-auto">
          <h2 class="text-center mb-4">Découvrez notre sélection de {$category.name}</h2>
          <div class="seo-text" itemprop="description">
            {hook h="displayCategory2IntroText"}
          </div>
          
          {* Ajout de l'agrégation des évaluations *}
          {if isset($seo_content) && isset($seo_content.rating) && $seo_content.rating > 0}
            <div class="my-4 text-center" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
              <meta itemprop="ratingValue" content="{$seo_content.rating}">
              <meta itemprop="reviewCount" content="{$seo_content.review_count|default:5}">
              <div class="ratings d-inline-block">
                {for $i=1 to 5}
                  <span class="star {if $i <= $seo_content.rating}filled{/if}">★</span>
                {/for}
              </div>
              <div class="rating-text">{$seo_content.rating}/5 - {$seo_content.review_count|default:5} avis clients</div>
            </div>
          {/if}
        </div>
      </div>
    </div>
  {/if}

  {* Conserver les hooks existants *}
  {assign var=linkparent value=$link->getCategoryLink($category.id_parent)}
  {assign var=isparentactu value=$linkparent|strpos:'actualites'}
  {assign var=cat value="{'displayCategorie'}{$category.link_rewrite|replace:'-':''}"}
  {hook h=$cat}

  {* Section intermédiaire avec balisage structuré pour FAQ *}
  {if $category.id == 2}
    <div class="container seo-midcontent my-5">
      <div class="row align-items-center">
        <div class="col-md-6">
          <img src="{if isset($seo_content.mid_image) && $seo_content.mid_image}{$seo_content.mid_image}{else}{$urls.img_url}category-2-feature.jpg{/if}" 
               alt="Caractéristiques {$category.name}" class="img-fluid rounded">
        </div>
        <div class="col-md-6">
          <h3 class="mb-3">Pourquoi choisir nos {$category.name} ?</h3>
          <div class="seo-text">
            {hook h="displayCategory2MidText"}
          </div>
          
          {* Section FAQ avec schema.org *}
          {if isset($seo_content) && isset($seo_content.faq) && $seo_content.faq}
            {assign var=faq_items value=json_decode($seo_content.faq, true)}
            {if $faq_items && is_array($faq_items) && count($faq_items) > 0}
              <div class="faq-section mt-4" itemscope itemtype="https://schema.org/FAQPage">
                <h4 class="mb-3">Questions fréquentes</h4>
                
                {foreach from=$faq_items item=faq_item}
                  <div class="faq-item mb-3" itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">
                    <div class="faq-question font-weight-bold" itemprop="name">{$faq_item.question}</div>
                    <div class="faq-answer ml-3" itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">
                      <div itemprop="text">{$faq_item.answer nofilter}</div>
                    </div>
                  </div>
                {/foreach}
              </div>
            {/if}
          {/if}
        </div>
      </div>
    </div>
  {/if}

  {* Hook existant pour le listing de produits *}
  {hook h='categoryListing'}

  {* Section après le listing des produits avec HowTo schema *}
  {if $category.id == 2}
    <div class="container seo-bottom-content my-5 pb-5">
      {if isset($seo_content) && isset($seo_content.how_to) && $seo_content.how_to}
        {assign var=howto_data value=json_decode($seo_content.how_to, true)}
        {if $howto_data && isset($howto_data.steps) && is_array($howto_data.steps) && count($howto_data.steps) > 0}
          <div itemscope itemtype="https://schema.org/HowTo">
            <meta itemprop="name" content="{$howto_data.title|default:"Guide d'utilisation"}">
            
            <h3 class="text-center mb-4" itemprop="name">{$howto_data.title|default:"Conseils et astuces pour nos produits"}</h3>
            
            {if isset($howto_data.description) && $howto_data.description}
              <p itemprop="description">{$howto_data.description}</p>
            {/if}
            
            <div class="how-to-steps mt-4">
              {foreach from=$howto_data.steps item=step key=key}
                <div class="step-item mb-4" itemprop="step" itemscope itemtype="https://schema.org/HowToStep">
                  <meta itemprop="position" content="{$key+1}">
                  <h4 itemprop="name" class="step-title">{$step.title}</h4>
                  <div itemprop="text" class="step-content">
                    {$step.content nofilter}
                  </div>
                </div>
              {/foreach}
            </div>
          </div>
        {else}
          <div class="row">
            <div class="col-12">
              <h3 class="text-center mb-4">Conseils et astuces pour {$category.name}</h3>
              <div class="seo-text">
                {hook h="displayCategory2BottomText"}
              </div>
            </div>
          </div>
        {/if}
      {else}
        <div class="row">
          <div class="col-12">
            <h3 class="text-center mb-4">Conseils et astuces pour {$category.name}</h3>
            <div class="seo-text">
              {hook h="displayCategory2BottomText"}
            </div>
          </div>
        </div>
      {/if}
    </div>
  {/if}

  {hook h='displayCategoryElementor'}

  {if $isparentactu}
    <div class="text-center mb-5 mt-5">
      <a href="{$category.id_parent}-actualites" style="color:#27B7B1">RETOUR</a>
    </div>
  {/if}
{/block}
