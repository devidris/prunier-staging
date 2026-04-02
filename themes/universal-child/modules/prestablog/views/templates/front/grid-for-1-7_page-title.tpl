{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{if isset($news)}

  <article class="article-blog border-0 p-0" itemscope itemtype="https://schema.org/BlogPosting">

    <time itemprop="datePublished" class="article-date">
      <span class="text-primary">{l s='Article published on' d='Shop.CreathemeModules'} {dateFormat date=$news->date|date_format:'%Y-%m-%d' full=0}</span>
    </time>
    <h2 class="article-title display-4 mb-4" data-referenceid="{$news->id|intval}" itemprop="headline">{$news->title}</h2>
 
    {if isset($news_Image) && $prestablog_config.prestablog_view_news_img}
      <img class="article-img w-100 mb-4" src="{$prestablog_theme_upimg}thumb_{$news->id|intval}.jpg?{$md5pic}" alt="{$news->title}" itemprop="image">
    {/if}

{/if}
