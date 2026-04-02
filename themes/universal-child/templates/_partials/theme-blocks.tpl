{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{assign var=numBlocks value=$pte_blocks|count}

{if $pte_blocksinhook == 'altColumn' || $pte_blocksinhook == 'footerBefore'}<div class="theme-blocks-container position-relative mb-5 mb-lg-0">{/if}

  <div class="theme-blocks {if $pte_blocksinhook == 'altColumn' || $pte_blocksinhook == 'footerBefore'}{$pte_blocksinhook} owl-carousel py-5{else}row{/if}">
    {foreach from=$pte_blocks item=block name=blocks}

      {if $block.icon && $block.size == 3 && $numBlocks % 3 != 0}{assign var=col value='col-6 col-md-3'}{/if}
      {if $block.icon && $block.size == 3 && $numBlocks % 3 == 0}{assign var=col value='col-sm-3'}{/if}
      {if !$block.icon || ($block.icon && $block.size >= 4)}{assign var=col value='col-sm-'|cat:$block.size}{/if}

      {if $pte_sliderwidth == 'column' && $pte_blocksinhook == 'topColumn'}
        {assign var=col value='col-sm-6 col-md-12'}
        {if $smarty.foreach.blocks.first}{assign var=margin value='mt-3 mt-md-0 mt-lg-3'}{else}{assign var=margin value='mt-3'}{/if}
      {else}
        {assign var=margin value='my-2'}
      {/if}

      {if !$block.icon}
        <div class="theme-blocks-{$pte_blocksinhook} theme-block img {if $pte_blocksinhook != 'altColumn' && $pte_blocksinhook != 'footerBefore'}{$col} {$margin}{/if}"
             id="theme-block-{$block.id}">
          <div class="block-content position-relative overflow-hidden {if $pte_blocksinhook == 'reassurance'}d-lg-flex align-items-lg-center{/if} mx-auto">

            {if $block.link}<a class="block-link d-block overflow-hidden" href="{$block.link}">{/if}
              {if isset($block.imgsize)}
                <img class="w-100 {if $pte_blocksinhook == 'reassurance'}mr-2{/if}" src="{$urls.img_url}block-img-{$block.id}-{$id_shop}-{$id_lang}.png?v={$update_time|intval}"
                     alt="{$block.title}" {if isset($block.imgsize)}{$block.imgsize nofilter}{/if} loading="lazy">
              {else}
                <img class="w-100" src="{$urls.img_url}block-img-default.png" alt="{$block.title}" width="400" height="260" loading="lazy">
              {/if}
              {if $block.title || $block.description}
                <div class="block-text position-absolute">
                  {if $block.title}
                    <h2 class="block-title mb-0">{$block.title}</h2>
                    <div class="block-title-underline w-25 my-2 mx-auto"></div>
                  {/if}
                  {if $block.description}<p class="block-description mt-4">{$block.description|nl2br nofilter}</p>{/if}
                </div>
              {/if}
            {if $block.link}</a>{/if}

          </div>
        </div>
      {else}
        {assign var=flex value='d-flex flex-column flex-sm-row flex-md-column flex-xl-row align-items-center justify-content-center
                                text-center text-sm-left text-md-center text-xl-left py-2 py-xl-3'}
        <div class="theme-blocks-{$pte_blocksinhook} theme-block icon {$col} {$margin}" id="theme-block-{$block.id}">
          <div class="block-content {if !$block.link}{$flex}{/if}">

            {if $block.link}<a class="block-link {$flex}" href="{$block.link}">{/if}
              <i class="{$block.icon} text-primary mb-1 mb-sm-0 mb-md-1 mb-xl-0 mr-0 mr-sm-3 mr-md-0 mr-xl-3" aria-hidden="true"></i>
              {if $block.title || $block.description}
                <div class="block-text">
                  {if $block.title}<p class="block-title h2 mb-0">{$block.title}</p>{/if}
                  {if $block.description}<p class="block-description">{$block.description|nl2br nofilter}</p>{/if}
                </div>
              {/if}
            {if $block.link}</a>{/if}

          </div>
        </div>
      {/if}

    {/foreach}
  </div>

  {if $pte_blocksinhook == 'altColumn' || $pte_blocksinhook == 'footerBefore'}<div class="{$pte_blocksinhook}-dots owl-dots"></div>{/if}

{if $pte_blocksinhook == 'altColumn' || $pte_blocksinhook == 'footerBefore'}</div>{/if}
