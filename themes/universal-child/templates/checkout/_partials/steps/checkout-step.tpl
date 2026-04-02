{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{block name='step'}
  <section class="{[
    'checkout-step' => true,
    '-current' => $step_is_current,
    '-reachable' => $step_is_reachable,
    '-complete' => $step_is_complete,
    'js-current-step' => $step_is_current
  ]|classnames}" id="{$identifier}">

    <h1 class="step-title js-step-title h2 mb-0">
      <span class="step-number badge badge-primary font-weight-normal align-bottom mr-2">{$position}</span> {$title}
      <i class="icon-check-thin done text-primary align-bottom hidden ml-1" aria-hidden="true"></i>
      <span class="step-edit float-right text-primary hidden mt-2">{l s='Edit' d='Shop.CreathemeCheckout'}</span>
    </h1>

    <div class="content mt-4">{block name='step_content'}{/block}</div>

  </section>
{/block}
