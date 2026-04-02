{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{if sizeof($news)}
  {foreach from=$news item=news_item name=NewsName}
    {if $smarty.foreach.NewsName.first}<div class="article-container row"><div class="article-single col-lg-6">{/if}
    {if !$smarty.foreach.NewsName.first && $smarty.foreach.NewsName.index%5 == 0}
      </div></div><div class="article-container row">
      {if $smarty.foreach.NewsName.index%5 is even && $smarty.foreach.NewsName.iteration != 11}
        <div class="article-group d-flex flex-wrap justify-content-between col-lg-6">
      {/if}
    {/if}
    {if $smarty.foreach.NewsName.iteration%11 == 0 && $smarty.foreach.NewsName.index%10 is even}<div class="article-single col-lg-6">{/if}
    {if $smarty.foreach.NewsName.iteration%10 == 0}</div><div class="article-single col-lg-6">{/if}

      <div class="article-content mb-4">

        <div class="article-top mb-3">
          {if isset($news_item.image_presente)}
            <a href="{PrestaBlogUrl id=$news_item.id_prestablog_news seo=$news_item.link_rewrite titre=$news_item.title}" title="{$news_item.title}">
              <img class="article-img w-100" src="{$prestablog_theme_upimg}thumb_{$news_item.id_prestablog_news|intval}.jpg?{$md5pic}" alt="{$news_item.title}">
            </a>
          {/if}
        </div>

        <div class="article-bottom">
          <h2 class="h4">
            <a class="article-title font-weight-bold" href="{PrestaBlogUrl id=$news_item.id_prestablog_news seo=$news_item.link_rewrite titre=$news_item.title}"
               title="{$news_item.title}">{$news_item.title|truncate:30:'...'}</a>
          </h2>

          {if $news_item.paragraph_crop != ''}
            <p class="article-desc">{$news_item.paragraph_crop|truncate:65:'...'}</p>
          {/if}

          <a href="{PrestaBlogUrl id=$news_item.id_prestablog_news seo=$news_item.link_rewrite titre=$news_item.title}"
             class="article-link font-weight-bold">{l s='En savoir plus...' d='Shop.CreathemeModules'}</a>
        </div>

      </div>

    {if $smarty.foreach.NewsName.first}</div><div class="article-group d-flex flex-wrap justify-content-between col-lg-6">{/if}
    {if $smarty.foreach.NewsName.iteration%11 == 0 && $smarty.foreach.NewsName.index%10 is even}
      </div><div class="article-group d-flex flex-wrap justify-content-between col-lg-6">
    {/if}
  {/foreach}

  </div></div>{include file="$prestablog_pagination"}

{else}

  <p class="alert-warning">{l s='Empty' d='Shop.CreathemeModules'}</p>

{/if}
