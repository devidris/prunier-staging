{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{block name='login_form'}

  {block name='login_form_errors'}
    <div class="row">
      <div class="col-md-6 offset-md-3">
        {include file='_partials/form-errors.tpl' errors=$errors['']}
      </div>
    </div>
  {/block}

  <form class="needs-validation" id="login-form" method="post" action="{block name='login_form_actionurl'}{$action}{/block}">

      {block name='login_form_fields'}
        {foreach from=$formFields item=field}
          {block name='form_field'}{form_field field=$field}{/block}
        {/foreach}
      {/block}

      <div class="forgot-password form-group row">
        <div class="col-md-6 offset-md-3">
          <span class="text-primary" data-ob="{$urls.pages.password|base64_encode}">{l s='Forgot your password?' d='Shop.CreathemeCustomer'}</span>
        </div>
      </div>
    

    {block name='login_form_footer'}
      <footer class="form-footer row">
        <div class="col-md-9 offset-md-3">
          <input name="submitLogin" type="hidden" value="1">
		{widget name='pixel_cloudflare_turnstile'}
          {block name='form_buttons'}
            <button class="btn btn-block btn-primary rounded-0 font-weight-bold text-uppercase py-3 px-4" id="submit-login" type="submit" data-link-action="sign-in">{l s='Sign in' d='Shop.CreathemeCustomer'}</button>
          {/block}
        </div>
      </footer>
    {/block}
  </form>

{/block}
