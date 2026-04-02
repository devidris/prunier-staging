{if Configuration::get('topbar_state')}
<div class="topbar-prunier">
  <div class="container text-white py-2">
    {if Context::getContext()->language->id == 1}
      {Configuration::get('topbar_content') nofilter}
    {else}
      {Configuration::get('topbar_content_en') nofilter}
    {/if}
  </div>
</div>
{/if}

{block name='header_banner'}
  <div class="header-banner">{hook h='displayBanner'}</div>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container d-flex justify-content-center justify-content-md-between align-items-center py-2 py-lg-3">
      <div class="pointer hidden-lg-up" id="menu-icon">
        <img class="menu-icon-open show" src="{$urls.img_url}icon-menu.png" alt="" width="20" height="20">
        <img class="menu-icon-close hidden" src="{$urls.img_url}icon-close.png" alt="" width="20" height="20">
      </div>
      <a class="position-absolute hidden-lg-up" id="header-logo" href="{$urls.base_url}">
        <img src="{$shop.logo}" alt="{$shop.name}" width="90" height="54" loading="lazy">
      </a>
      {hook h='displayTop'}
    </div>
  </div>
{/block}

<div class="header-menu {if isset($pte_menuwidth) && $pte_menuwidth == 'window'}menu-bg{/if}">
  <div class="container">
    {block name='header_nav_full_width'}{hook h='displayNavFullWidth'}{/block}
  </div>
</div>

<div class="position-fixed h-100 overflow-hidden hidden-lg-up p-3" id="mobile_top_menu_wrapper">
  <div class="mobile js-top-menu text-uppercase" id="_mobile_top_menu"></div>
  <div class="mobile-info my-4">
    <a class="d-block mb-4" href="{$link->getPageLink('contact')}">{l s='Contact' d='Shop.CreathemeGlobal'}</a>
  </div>
  <div class="js-top-menu-bottom bg-primary d-flex justify-content-center text-uppercase mx-n3 py-3">
    <div class="mobile-user-info mr-4 pr-4">
      <span class="d-block" data-ob="{$urls.pages.my_account|base64_encode}">
        <img class="align-text-top mr-2" src="{$urls.img_url}icon-user.png" alt="" width="18" height="19">
        <span class="text-white">{l s='My account' d='Shop.CreathemeGlobal'}</span>
      </span>
    </div>
    <div id="_mobile_language_selector"></div>
  </div>
</div>
