{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<nav class="pagination-list row my-3">

  <div class="showing col-lg-4 text-center text-lg-left py-2">
    {block name='pagination_summary'}
      {l s='Showing %from%-%to% of %total% item(s)' d='Shop.CreathemeGlobal'
         sprintf=['%from%' => $pagination.items_shown_from, '%to%' => $pagination.items_shown_to, '%total%' => $pagination.total_items]}
    {/block}
  </div>

  <div class="col-lg-8">
    {block name='pagination_page_list'}
      {if !isset($pagination.should_be_displayed) || $pagination.should_be_displayed}
        <ul class="pagination page-list justify-content-center justify-content-lg-end">
          {foreach from=$pagination.pages item=page}
            <li class="page-item {if $page.current}active{/if} {['disabled' => !$page.clickable && !$page.current]|classnames}
                       {if $page.type !== 'previous' && $page.type !== 'next'}hidden-xs-down{/if}">
              {if $page.type === 'spacer'}
                <span class="spacer page-link">&hellip;</span>
              {else}
                {if $page.current}
                  <span class="page-link">{$page.page}</span>
                {else}
                  <a class="page-link {if $page.type === 'previous'}previous{elseif $page.type === 'next'}next{/if}
                            {['disabled' => !$page.clickable, 'js-search-link' => true]|classnames}"
                     rel="{if $page.type === 'previous'}prev{elseif $page.type === 'next'}next{else}nofollow{/if}" href="{$page.url}">
                    {if $page.type === 'previous'}
                      {l s='Previous' d='Shop.CreathemeGlobal'}
                    {elseif $page.type === 'next'}
                      {l s='Next' d='Shop.CreathemeGlobal'}
                    {else}
                      {$page.page}
                    {/if}
                  </a>
                {/if}
              {/if}
            </li>
          {/foreach}
        </ul>
      {/if}
    {/block}
  </div>

</nav>
