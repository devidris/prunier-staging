{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div class="block_newsletter side-block" id="blockEmailSubscription_{$hookName}">

  <p class="block-title">{l s='Newsletter registration' d='Shop.CreathemeModules'}</p>

  <div class="block-content">

    {if $conditions}<p class="form-text mt-0 mb-2">{$conditions nofilter}</p>{/if}

    <form class="needs-validation" method="post" action="{$urls.current_url}#blockEmailSubscription_{$hookName}">
      <input name="blockHookName" type="hidden" value="{$hookName}">
      <input name="action" type="hidden" value="0">
      <div class="input-group my-2">
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

    {if $msg}<p class="alert {if $nw_error}alert-danger{else}alert-success{/if} my-2">{$msg}</p>{/if}

  </div>

</div>
