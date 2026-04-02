{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL-CHILD
 * Extends parent order-confirmation.tpl
 * ------------------------------ *}

{extends file='parent:checkout/order-confirmation.tpl'}

{* Add Matomo E-commerce Tracking *}
{block name='hook_order_confirmation_2' append}
  <script>
    var _paq = window._paq = window._paq || [];
    {if isset($order.products) && $order.products}
      {foreach from=$order.products item=product}
        _paq.push(['addEcommerceItem',
          '{$product.reference|escape:'javascript'}',
          '{$product.name|escape:'javascript'}',
          false,
          {$product.price},
          {$product.quantity}
        ]);
      {/foreach}
    {/if}
    _paq.push(['trackEcommerceOrder',
      '{$order.details.reference|escape:'javascript'}',
      {$order.totals.total.value},
      {$order.subtotals.products.value},
      {$order.totals.total_including_tax.value - $order.totals.total_excluding_tax.value},
      {if isset($order.subtotals.shipping)}{$order.subtotals.shipping.value}{else}0{/if},
      false
    ]);
  </script>
{/block}
