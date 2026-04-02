{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='customer/page.tpl'}

{block name='page_header_container'}
  <header class="page-header text-center flex-shrink-0 pt-5">
    <div class="container">

      <div class="header-text container">
        <h1 class="display-4 mb-3">{l s='My account' d='Shop.CreathemeCustomer'}</h1>
        <div class="header-text-content h4 mx-auto">
          {l s='With your Prunier account, access our private sales, take advantage of our advantages, easily follow your orders and stay informed of our news.' d='Shop.CreathemeCustomer'}
        </div>
      </div>

    </div>
  </header>
{/block}

{block name='page_content'}
  <div class="links row text-center mx-auto">

    <a class="col-sm-6 col-lg-6" id="identity-link" href="{$urls.pages.identity}">
      <span class="link-item">
        <img src="{$urls.img_url}account-info.png" alt="{l s='Information' d='Shop.CreathemeCustomer'}">
        <p>{l s='Information' d='Shop.CreathemeCustomer'}</p>
      </span>
    </a>

    {if $customer.addresses|count}
      <a class="col-sm-6 col-lg-6" id="addresses-link" href="{$urls.pages.addresses}">
        <span class="link-item">
          <img src="{$urls.img_url}account-address.png" alt="{l s='Information' d='Shop.CreathemeCustomer'}">
          <p>{l s='Addresses' d='Shop.CreathemeCustomer'}</p>
        </span>
      </a>
    {else}
      <a class="col-sm-6 col-lg-6" id="address-link" href="{$urls.pages.address}">
        <span class="link-item">
          <img src="{$urls.img_url}account-address.png" alt="{l s='Information' d='Shop.CreathemeCustomer'}">
          <p>{l s='Add first address' d='Shop.CreathemeCustomer'}</p>
        </span>
      </a>
    {/if}

    {if !$configuration.is_catalog}
      <a class="col-sm-6 col-lg-6" id="history-link" href="{$urls.pages.history}">
        <span class="link-item">
          <img src="{$urls.img_url}account-order.png" alt="{l s='Information' d='Shop.CreathemeCustomer'}">
          <p>{l s='Order history' d='Shop.CreathemeCustomer'}</p>
        </span>
      </a>
    {/if}

    {if !$configuration.is_catalog}
      <a class="col-sm-6 col-lg-6" id="order-slips-link" href="{$urls.pages.order_slip}">
        <span class="link-item">
          <img src="{$urls.img_url}account-credit-slip.png" alt="{l s='Information' d='Shop.CreathemeCustomer'}">
          <p>{l s='Credit slips' d='Shop.CreathemeCustomer'}</p>
        </span>
      </a>
    {/if}

    {if !$configuration.is_catalog && $configuration.voucher_enabled}
      <a class="col-sm-6 col-lg-6 d-none" id="discounts-link" href="{$urls.pages.discount}">
        <span class="link-item">
          <i class="icon-tags-left" aria-hidden="true"></i>{l s='Vouchers' d='Shop.CreathemeCustomer'}
        </span>
      </a>
    {/if}

    {if !$configuration.is_catalog && $configuration.return_enabled}
      <a class="col-sm-6 col-lg-6" id="returns-link" href="{$urls.pages.order_follow}">
        <span class="link-item">
          <i class="icon-undo-curved" aria-hidden="true"></i>{l s='Merchandise returns' d='Shop.CreathemeCustomer'}
        </span>
      </a>
    {/if}

    {block name='display_customer_account'}{hook h='displayCustomerAccount'}{/block}

  </div>
{/block}

{block name='page_footer'}
  {block name='my_account_links'}
    <div class="text-center">
      <a class="account-link" href="{$urls.actions.logout}">
        <i class="icon-exit-to-app mr-2" aria-hidden="true"></i>{l s='Sign out' d='Shop.CreathemeCustomer'}
      </a>
    </div>
  {/block}
{/block}
