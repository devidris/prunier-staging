{**
 * Loulou66
 * LpsProAccount module for Prestashop
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php*
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 *  @author    Loulou66.fr <contact@loulou66.fr>
 *  @copyright loulou66.fr
 *  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *}
 {block name='address_selector_blocks'}
    {foreach $addresses as $address name=addressname}
        {if $type == 'invoice' && $smarty.foreach.addressname.first || $type == 'delivery'}
            <article
                class="js-address-item address-item{if $address.id == $selected || $type == 'invoice' && $smarty.foreach.addressname.first || $addresses|count == 1} selected{/if}"
                id="{$name|classname}-address-{$address.id}"
            >
                <header class="h4">
                    <label class="radio-block">
                        <span class="custom-radio">
                            <input
                            type="radio"
                            name="{$name}"
                            value="{$address.id}"
                            {if $address.id == $selected || $type == 'invoice' && $smarty.foreach.addressname.first || $addresses|count == 1}checked{/if}
                            >
                            <span></span>
                         </span>
                        <span class="address-alias h4">{$address.alias}</span>
                        <div class="address">
                             {*$address.formatted nofilter*}
                            {$address.formatted|replace:'<br>':' '|replace:'<br />':' '}
                         </div>
                    </label>
                </header>
                <hr>
                <footer class="address-footer{if $smarty.foreach.addressname.first} lps-first-address{/if}">
                    <a
                    class="edit-address text-muted"
                    data-link-action="edit-address"
                    href="{url entity='order' params=['id_address' => $address.id, 'editAddress' => $type, 'token' => $token]}"
                    >
                        <i class="material-icons edit">&#xE254;</i>{l s='Edit' d='Shop.Theme.Actions'}
                    </a>
                    <a
                    class="delete-address text-muted"
                    data-link-action="delete-address"
                    href="{url entity='order' params=['id_address' => $address.id, 'deleteAddress' => true, 'token' => $token]}"
                    >
                        <i class="material-icons delete">&#xE872;</i>{l s='Delete' d='Shop.Theme.Actions'}
                    </a>
                </footer>
            </article>
        {/if}
    {/foreach}
{/block}











