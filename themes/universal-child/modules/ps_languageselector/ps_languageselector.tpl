{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div id="_desktop_language_selector" class="mr-auto">

  <span class="language-label float-left text-white hidden-lg-up mr-1">{l s='Language:' d='Shop.CreathemeModules'}</span>

  <div class="language-selector dropdown js-dropdown d-flex align-items-center h-100">

    <span class="language-selector-dropdown pointer" data-toggle="dropdown" data-reference="parent">
      <span class="selected_language_name text-uppercase">
        {foreach from=$languages item=language}
          {if $language.id_lang == $current_language.id_lang}{$language.iso_code}{/if}
        {/foreach}
      </span>
      <i class="icon-angle-down text-white align-text-bottom ml-1" aria-hidden="true"></i>
    </span>

    <ul class="dropdown-menu dropdown-menu-left border-0 shadow-none text-nowrap m-0 py-2 px-3">
      {foreach from=$languages item=language}
        {if $language.id_lang != $current_language.id_lang}
          <li>
            {assign var=url value={url entity='language' id=$language.id_lang}}
            {if $page.page_name == 'index'}<a href="{$url}" title="{$language.name}" class="stretched-link">{else}<span data-ob="{$url|base64_encode}" title="{$language.name}" class="stretched-link">{/if}
              <span class="language_name text-uppercase">{$language.iso_code}</span>
            {if $page.page_name == 'index'}</a>{else}</span>{/if}
          </li>
        {/if}
      {/foreach}
    </ul>

  </div>

</div>
