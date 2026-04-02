{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div class="user-info position-relative hidden-md-down ml-auto">

  <span class="account-block d-block pointer" tabindex="0">
    <img src="{$urls.img_url}icon-user.png" alt="" width="18" height="19">
  </span>

  <div class="user-block card card-block position-absolute hidden py-2 mt-1">
    <div class="d-flex flex-column">
      <span class="py-2" data-ob="{$urls.pages.my_account|base64_encode}">{l s='My account' d='Shop.CreathemeModules'}</span>
      <span class="border-top py-2" data-ob="{$urls.pages.identity|base64_encode}">{l s='My information' d='Shop.CreathemeModules'}</span>
      <span class="border-top py-2" data-ob="{$urls.pages.addresses|base64_encode}">{l s='My addresses' d='Shop.CreathemeModules'}</span>
      {if !$configuration.is_catalog}
        <span class="border-top py-2" data-ob="{$urls.pages.history|base64_encode}">{l s='My orders' d='Shop.CreathemeModules'}</span>
      {/if}
      {if $logged}
        <span class="logout border-top text-primary py-2" data-ob="{$urls.actions.logout|base64_encode}">{l s='Log out' d='Shop.CreathemeModules'}</span>
      {else}
        <span class="login border-top text-primary pt-2 pb-1" data-ob="{$urls.pages.my_account|base64_encode}">{l s='Log in' d='Shop.CreathemeModules'}</span>
        <span>
          {l s='or' d='Shop.CreathemeModules'}
          <span class="text-primary" data-ob="{$urls.pages.register|base64_encode}">{l s='Create an account' d='Shop.CreathemeModules'}</span>
        </span>
      {/if}
    </div>
  </div>

</div>
