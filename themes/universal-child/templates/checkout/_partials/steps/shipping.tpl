{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='checkout/_partials/steps/checkout-step.tpl'}

{block name='step_content'}

  <div id="hook-display-before-carrier">{$hookDisplayBeforeCarrier nofilter}</div>

  <div class="delivery-options-list">
    {if $delivery_options|count}

      <form id="js-delivery" method="post" data-url-update="{url entity='order' params=['ajax' => 1, 'action' => 'selectDeliveryOption']}">
        <div class="form-fields">

          {block name='delivery_options'}
            <div class="delivery-options mb-4">
              {foreach from=$delivery_options item=carrier key=carrier_id}
                <div class="delivery-option js-delivery-option d-flex flex-wrap align-items-stretch border rounded mt-2">

                  <div class="col-2 col-md-1 d-flex align-items-center justify-content-center pointer py-3">
                    <label class="mb-0">
                      <span class="custom-control custom-radio">
                        <input class="custom-control-input" id="delivery_option_{$carrier.id}" name="delivery_option[{$id_address}]"
                               type="radio" value="{$carrier_id}" {if $delivery_option == $carrier_id}checked{/if}>
                        <span class="custom-control-description"></span>
                      </span>
                    </label>
                  </div>

                  <label class="delivery-option-2 col-10 col-md-11 pointer mb-0 py-3" for="delivery_option_{$carrier.id}">
                    <div class="row align-items-center">
                      <div class="col-4 col-md-3 col-xl-2">
                        <div class="logo-container text-center mx-auto">
                          {if $carrier.logo}<img src="{$carrier.logo}" alt="{$carrier.name}" loading="lazy">{/if}
                        </div>
                      </div>
                      <div class="col-8 col-md-9 col-xl-10">
                        <div class="row align-items-center">
                          <div class="col-md-8">
                            <span class="carrier-name d-block">{$carrier.name}</span>
                            <span class="carrier-delay font-weight-normal">{$carrier.delay}</span>
                          </div>
                          <div class="col-md-4 text-md-right pt-1 pt-md-0">
                            <span class="carrier-price font-weight-normal">{$carrier.price}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </label>

                </div>

                <div class="carrier-extra-content js-carrier-extra-content {if $delivery_option != $carrier_id}hidden{/if} my-2">
                  {$carrier.extraContent nofilter}
                </div>

              {/foreach}
            </div>
          {/block}

           <div id="hook-display-after-carrier">{$hookDisplayAfterCarrier nofilter}</div>


          <div class="order-options mt-4">
            {if isset($delivery_message)}
              <div class="mb-4" id="delivery">
                <label>{l s='If you would like to add a comment about your order, please write it in the field below:' d='Shop.CreathemeCheckout'}</label>
                <textarea style="background-color: #fff;" class="form-control" name="delivery_message" rows="2">{$delivery_message}</textarea>
              </div>
            {/if}

            {if $recyclablePackAllowed}
              <label class="custom-control custom-checkbox">
                <input class="custom-control-input" name="recyclable" type="checkbox" value="1" {if $recyclable}checked{/if}>
                <span class="custom-control-description">{l s='I would like to receive my order in recycled packaging' d='Shop.CreathemeCheckout'}</span>
              </label>
            {/if}

            {if $gift.allowed}
              <label class="custom-control custom-checkbox">
                <input class="js-gift-checkbox custom-control-input" name="gift" type="checkbox" value="1" {if $gift.isGift}checked{/if}>
                <span class="custom-control-description">{$gift.label}</span>
              </label>
              <div class="collapse {if $gift.isGift}show{/if} mb-3" id="gift">
                <label>{l s='If you\'d like, you can add a note to the gift:' d='Shop.CreathemeCheckout'}</label>
                <textarea style="background-color: #fff;" class="form-control" name="gift_message" rows="2">{$gift.message}</textarea>
              </div>
            {/if}
          </div>

        </div>

        <div class="text-right">
          <button class="continue btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4" name="confirmDeliveryOption" type="submit" value="1">{l s='Continue' d='Shop.CreathemeCheckout'}</button>
        </div>
      </form>

    {else}

      <p class="alert alert-danger">{l s='Unfortunately, there are no carriers available for your delivery address.' d='Shop.CreathemeCheckout'}</p>

    {/if}
  </div>

 {* <div id="hook-display-after-carrier">{$hookDisplayAfterCarrier nofilter}</div> *}
  <div id="extra_carrier"></div>

{/block}
