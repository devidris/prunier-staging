{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='cms/page.tpl'}



{block name='cms_content'}
  <h1 class="display-4 text-center">{$cms.meta_title}</h1>

  <div class="op-c-FAQ mt-4">
    {$cms.content nofilter}
  </div>
{/block}
