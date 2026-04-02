{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{if $breadcrumb.count >= 2}
  <nav class="{if isset($pte_menuwidth) && $pte_menuwidth == 'window'}breadcrumb-bg{/if} hidden-sm-down">
    <div class="container">
      <ul class="breadcrumb" data-depth="{$breadcrumb.count}" itemscope itemtype="https://schema.org/BreadcrumbList">
        {block name='breadcrumb'}
          {foreach from=$breadcrumb.links item=path name=breadcrumb}
            {block name='breadcrumb_item'}
              <li class="breadcrumb-item {if $smarty.foreach.breadcrumb.last}active{/if}" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                {if !$smarty.foreach.breadcrumb.last}<a href="{$path.url}" itemprop="item">{/if}
                  <span {if $smarty.foreach.breadcrumb.last}class="font-weight-bold"{/if} itemprop="name">{$path.title}</span>
                {if !$smarty.foreach.breadcrumb.last}</a>{/if}
                <meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
              </li>
            {/block}
          {/foreach}
        {/block}
      </ul>
    </div>
  </nav>

  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    "itemListElement": [
      {foreach from=$breadcrumb.links item=path name=breadcrumb}
      {
        "@type": "ListItem",
        "position": {$smarty.foreach.breadcrumb.iteration},
        "name": "{$path.title|escape:'html':'UTF-8'}",
        "item": "{$path.url}"
      }{if !$smarty.foreach.breadcrumb.last},{/if}
      {/foreach}
    ]
  }
  </script>
{/if}
