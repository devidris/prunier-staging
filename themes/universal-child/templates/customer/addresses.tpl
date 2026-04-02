{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='customer/page.tpl'}

{block name='page_header_container'}
  <header class="page-header text-center flex-shrink-0 pt-5">
    <div class="container">

      <img src="{$urls.img_url}account-address.png" alt="{l s='Addresses' d='Shop.CreathemeCustomer'}">

      <div class="header-text container">
        <h1 class="display-4 mb-3">{l s='Addresses' d='Shop.CreathemeCustomer'}</h1>
        <div class="header-text-content h4 mx-auto">
          {l s='It is on this page that you can manage your delivery and billing addresses.' d='Shop.CreathemeCustomer'}
        </div>
      </div>

    </div>
  </header>
{/block}

{block name='page_content'}
  <div class="row">
    {foreach $customer.addresses as $address}
      <div class="col-sm-6 col-md-4 mb-3">
        {block name='customer_address'}
          {include file='customer/_partials/block-address.tpl' address=$address}
        {/block}
      </div>
    {/foreach}
    <div class="col-sm-6 col-md-4 mb-3">
      <a class="add-address bg-transparent card card-block justify-content-center h-100 text-primary text-center"
         href="{$urls.pages.address}" data-link-action="add-address">
        <i class="icon-add-circle mb-3" aria-hidden="true"></i>{l s='Add new address' d='Shop.CreathemeCustomer'}
      </a>
    </div>
  </div>
{/block}
