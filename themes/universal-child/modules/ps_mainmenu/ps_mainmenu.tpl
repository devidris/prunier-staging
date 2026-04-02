{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{function name='menu' nodes=[] depth=0 parent=null}
  {if $nodes|count && $depth < 4}
    <ul id="top-menu" class="top-menu list-unstyled {if $depth < 2}d-lg-flex flex-wrap align-items-center justify-content-end{/if} mr-auto" data-depth="{$depth}">
      {foreach from=$nodes item=node}
        {* {if $node.page_identifier == 'lnk-la-maison' or $node.page_identifier == 'lnk-manufacture'}
          </ul>
          <a class="hidden-md-down mx-2 mx-xl-3" href="{$urls.base_url}">
            <img src="{$shop.logo}" alt="{$shop.name}" width="120" height="54" loading="lazy">
          </a>
          <ul class="top-menu list-unstyled {if $depth < 2}d-lg-flex flex-wrap align-items-center{/if} mr-auto" data-depth="{$depth}">
        {/if} *}
        <li class="{$node.page_identifier} {$node.type} {if $depth == 1}col-lg-{(12 / $nodes|count)|round:0}{/if}">
          <a class="{if $depth >= 0}dropdown-item{/if} {if $depth == 1}dropdown-submenu{/if} bg-transparent position-relative text-wrap"
             {if $node.open_in_new_window}target="_blank"{/if} data-depth="{$depth}">
            <span onclick="window.location='{$node.url}'">{$node.label}</span>
            {if $node.image_urls}
              {foreach from=$node.image_urls item=image_url}
                <!--<div><img src="{$image_url}"/></div>-->
            	<div>
		<a href="{$node.url}">
		<img src ="{$image_url}" alt ="{$node.name}" />
		</a>
		</div>

              {/foreach}
            {/if}
            {if $node.children|count && $depth < 3}
              {assign var=_expand_id value=10|mt_rand:100000}
              <span class="collapse-icons navbar-toggler d-flex align-items-center position-absolute h-100 hidden-lg-up py-0 px-3"
                    data-toggle="collapse" data-target="#top_sub_menu_{$_expand_id}">
                <i class="icon-angle-down add" aria-hidden="true"></i>
                <i class="icon-angle-up remove hidden" aria-hidden="true"></i>
              </span>
            {/if}
          </a>
          {if $node.children|count && $depth < 3}
            <div class="collapse {if $depth == 0}sub-menu js-sub-menu{else}sub-sub-menu{/if} bg-white" id="top_sub_menu_{$_expand_id}"
                 data-parent="{if $depth == 0}#top-menu{elseif $depth == 1}.sub-menu.show{else}.sub-sub-menu.show{/if}">
              {menu nodes=$node.children depth=$node.depth parent=$node}
            </div>
          {/if}
        </li>
      {/foreach}
    </ul>
  {/if}
{/function}

<nav class="menu js-top-menu menu-bg d-flex position-absolute hidden-md-down" id="_desktop_top_menu">
  {menu nodes=$menu.children}
  {if !isset($pte_menuspecials) || $pte_menuspecials}
    {assign var=url value={url entity='prices-drop'}}
    <span class="menu-specials d-block" data-ob="{$url|base64_encode}">{l s='On sale' d='Shop.CreathemeModules'}</span>
  {/if}
  {if !isset($pte_menunews) || $pte_menunews}
    {assign var=url value={url entity='new-products'}}
    <span class="menu-news d-block" data-ob="{$url|base64_encode}">{l s='New products' d='Shop.CreathemeModules'}</span>
  {/if}
</nav>
