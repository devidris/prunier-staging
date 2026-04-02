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
{block name='customer_form'}
    {block name='customer_form_errors'}
        {include file='_partials/form-errors.tpl' errors=$errors['']}
    {/block}
    <form action="{block name='customer_form_actionurl'}{$action}{/block}" id="customer-form" class="js-customer-form" method="post">
        <div>
            {block "form_fields"}
                {foreach from=$formFields item="field"}
                    {block "form_field"}
                        {if $field.type === "password"}
                            <div class="field-password-policy">
                                {form_field field=$field}
                            </div>
                        {else}
                            {form_field field=$field}
                        {/if}
                    {/block}
                {/foreach}
                {$hook_create_account_form nofilter}
            {/block}
        </div>
        {if isset($lpspacae) && $lpspacae}
            <p class="lpsproaccount-customer-validation">{$lpspacaetext1} {$lpspacaetext2}</p>
        {/if}
        {block name='customer_form_footer'}
            <footer class="form-footer clearfix">
                <input type="hidden" name="submitCreate" value="1">
                {block "form_buttons"}
                    <button class="btn btn-primary form-control-submit float-xs-right" data-link-action="save-customer" type="submit">
                        {l s='Save' d='Shop.Theme.Actions'}
                    </button>
                {/block}
            </footer>
        {/block}
    </form>
{/block}
