{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div class="block_newsletter footer-block text-center text-lg-left mt-5 mt-lg-0 mx-auto pl-lg-4" id="blockEmailSubscription_{$hookName}">

    <p class="footer-title h3 font-weight-bold mb-lg-4 mb-xl-2">{l s='Newsletter' d='Shop.CreathemeModules'}</p>
    {if $conditions}<p class="form-text my-3">{$conditions nofilter}</p>{/if}

    <form class="needs-validation" method="post" action="{$urls.current_url}#blockEmailSubscription_{$hookName}">
      <input name="blockHookName" type="hidden" value="{$hookName}">
      <input name="action" type="hidden" value="0">
      <div class="input-group">
        <input class="form-control rounded-0" name="email" type="email" placeholder="{l s='Your email address' d='Shop.CreathemeModules'}"
               aria-label="{l s='Your email address' d='Shop.CreathemeModules'}" required>
        <span class="input-group-btn">
          <button class="btn btn-primary rounded-0" name="submitNewsletter" type="submit">
            <img src="{$urls.img_url}icon-send.png" alt="" width="20" height="20">
          </button>
        </span>
      </div>
      {hook h='displayNewsletterRegistration'}
      {if isset($id_module)}{hook h='displayGDPRConsent' id_module=$id_module}{/if}
    </form>

    {if $msg}<p class="alert {if $nw_error}alert-danger{else}alert-success{/if} mt-2 mb-0">{$msg}</p>{/if}

  </div>
</div>
