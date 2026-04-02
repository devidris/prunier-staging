{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='page.tpl'}

{block name='page_title'}{l s='Contact us' d='Shop.CreathemeGlobal'}{/block}

{if $layout === 'layouts/layout-left-column.tpl'}
  {block name='left_column'}
    <div class="side-column column col-lg-3 hidden-md-down">
      <div id="left-column">{widget name='ps_contactinfo' hook='displayLeftColumn'}</div>
    </div>
  {/block}
{elseif $layout === 'layouts/layout-right-column.tpl'}
  {block name='right_column'}
    <div class="side-column column col-lg-3 hidden-md-down">
      <div id="right-column">{widget name='ps_contactinfo' hook='displayRightColumn'}</div>
    </div>
  {/block}
{/if}

{block name='page_content_container'}{widget name='contactform'}{/block}

{block name='page_footer_container'}{/block}
