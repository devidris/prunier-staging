{* Dropdown menu for product sorting options 
<div class="products-sort-order dropdown">
 Button that triggers the dropdown 
  <button
    class="btn-unstyle select-title"
    rel="nofollow"
    data-toggle="dropdown"
    aria-haspopup="true"
    aria-expanded="false">
    {if isset($listing.sort_selected)}{$listing.sort_selected}{else}{l s='Select'}{/if}
    <i class="material-icons float-xs-right">arrow_drop_down</i>
  </button>
   Dropdown menu content with sorting options 
  <div class="dropdown-menu">
    {foreach from=$listing.sort_orders item=sort_order}
      
        rel="nofollow"
        href="{$sort_order.url}"
        class="select-list {['current' => $sort_order.current, '']|classnames}"
      >
        {$sort_order.label}
      </a>
    {/foreach}
  </div>
</div>
 *}
