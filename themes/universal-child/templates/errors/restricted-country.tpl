{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='layouts/layout-error.tpl'}

{block name='content'}
  <section id="main">

    {block name='page_header_container'}
      <header class="page-header"></header>
    {/block}

    {block name='page_content_container'}
      <section class="page-restricted page-content" id="content">

        {block name='page_content'}
          {block name='page_title'}
            <h1>{l s='Access denied' d='Shop.CreathemeGlobal'}</h1>
          {/block}

          <p>{l s='You cannot access this store from your country. Sorry for the inconvenience.' d='Shop.CreathemeGlobal'}</p>
        {/block}

      </section>
    {/block}

    {block name='page_footer_container'}
      <footer class="page-footer"></footer>
    {/block}

  </section>
{/block}
