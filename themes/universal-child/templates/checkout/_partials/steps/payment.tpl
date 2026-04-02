{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='checkout/_partials/steps/checkout-step.tpl'}

{block name='step_content'}

  {hook h='displayPaymentTop'}
  <div class="js-cart-payment-step-refresh hidden"></div>

  {if isset($is_free) && $is_free}
    <p class="font-weight-bold">{l s='No payment needed for this order' d='Shop.CreathemeCheckout'}</p>
  {/if}

  <div class="payment-options {if isset($is_free) && $is_free}hidden{/if} mb-4">
<p>Pour tout paiement effectué avec une carte française depuis l'étranger, nous vous recommandons d'utiliser Paypal.</p>
    {foreach from=$payment_options item=module_options}

      {foreach from=$module_options item=option}
        <div class="payment-option" id="{$option.id}-container">
          <label class="custom-control custom-radio">
            <input class="custom-control-input {if $option.binary}binary{/if}" id="{$option.id}" name="payment-option" type="radio" data-module-name="{$option.module_name}" required
                   {if ($selected_payment_option == $option.id || (isset($is_free) && $is_free)) || ($payment_options|@count === 1 && $module_options|@count === 1)}checked{/if}>
            <span class="custom-control-description"></span>
          </label>
          <form method="get" class="ps-hidden-by-js">
            {if $option.id === $selected_payment_option}
              {l s='Selected' d='Shop.CreathemeCheckout'}
            {else}
              <button class="ps-hidden-by-js" name="select_payment_option" type="submit" value="{$option.id}">{l s='Choose' d='Shop.CreathemeCheckout'}</button>
            {/if}
          </form>
          <div style="width: 100%;" class="d-flex justify-content-between align-item-center">
            <label for="{$option.id}">
              <span>{$option.call_to_action_text}</span>
              {if $option.logo}<img src="{$option.logo}" loading="lazy">{/if}
            </label>
            {if $option.module_name == 'stripe_official'}<img src="{$urls.img_url}creditcards.svg" alt="" style="width: 140px;">{/if}
          </div>
        </div>

        {if $option.additionalInformation}
          <div class="additional-information js-additional-information definition-list {if $option.id != $selected_payment_option}ps-hidden{/if} mb-3 pl-4"
               id="{$option.id}-additional-information">{$option.additionalInformation nofilter}</div>
        {/if}

        <div class="js-payment-option-form {if $option.id != $selected_payment_option}ps-hidden{/if}" id="pay-with-{$option.id}-form">
          {if $option.form}
            {$option.form nofilter}
          {else}
            <form id="payment-form" method="post" action="{$option.action nofilter}">
              {foreach from=$option.inputs item=input}
                <input name="{$input.name}" type="{$input.type}" value="{$input.value}">
              {/foreach}
              <button class="hidden" id="pay-with-{$option.id}" type="submit"></button>
            </form>
          {/if}
        </div>
      {/foreach}

    {foreachelse}

      <p class="alert alert-danger">{l s='Unfortunately, there are no payment method available.' d='Shop.CreathemeCheckout'}</p>

    {/foreach}
  </div>

  {if $conditions_to_approve|count}
    <form class="js-conditions-to-approve" id="conditions-to-approve" method="get">
      <ul class="list-unstyled mb-4">
        {foreach from=$conditions_to_approve item=condition key=condition_name}
          <li>
            <label class="custom-control custom-checkbox">
              <input class="custom-control-input" id="conditions_to_approve[{$condition_name}]"
                     name="conditions_to_approve[{$condition_name}]" type="checkbox" value="1" required>
              <span class="js-terms custom-control-description">{$condition nofilter}</span>
		
		<!--this is the code that displays the second mandatory checkbox in payment during checkout -->
		{hook h='displayShoppingCartFooter'}
            </span>
          </li>
        {/foreach}
      </ul>
    </form>
  {/if}

  {if $show_final_summary}
    <hr>
    {include file='checkout/_partials/order-final-summary.tpl'}
  {/if}

  <hr>
	<!--<div>
		{hook h='displayShoppingCartFooter'}
	</div>-->

  <div class="js-payment-confirmation" id="payment-confirmation">
    <div class="text-center">
      <button style="font-family: Montserrat,Arial,Helvetica,sans-serif;font-size: .875rem;" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4 {if $ps_version >= '1.7.8.0' && !$selected_payment_option}disabled{/if}" type="submit"
              {if $ps_version < '1.7.8.0' && !$selected_payment_option}disabled{/if}>{l s='Confirm order' d='Shop.CreathemeCheckout'}</button>
      {if $show_final_summary}
        <article class="js-alert-payment-conditions alert alert-danger mt-3 mb-0" data-alert="danger" role="alert">
          {l s='Please make sure you\'ve chosen a [1]payment method[/1] and accepted the [2]terms and conditions[/2].' d='Shop.CreathemeCheckout'
             sprintf=['[1]' => '<a href="#checkout-payment-step">', '[/1]' => '</a>', '[2]' => '<a href="#conditions-to-approve">', '[/2]' => '</a>']}
        </article>
      {/if}
    </div>
  </div>

  {hook h='displayPaymentByBinaries'}

  <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content p-4">
        <button class="close align-self-end" type="button" data-dismiss="modal" aria-label="{l s='Close' d='Shop.CreathemeCheckout'}">
          <i class="icon-close-thin" aria-hidden="true"></i>
        </button>
        <div class="js-modal-content"></div>
      </div>
    </div>
  </div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    var form = document.querySelector('form#cart-summary');
    var checkbox = document.querySelector('#custom_checkbox');

    form.addEventListener('submit', function(event) {
        if (checkbox && !checkbox.checked) {
            alert('You must agree to the terms and conditions to proceed.');
            event.preventDefault();
        }
    });
});
</script>

{/block}
