{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{if $field.type == 'hidden'}

  {block name='form_field_item_hidden'}
    <input name="{$field.name}" type="hidden" value="{$field.value}">
  {/block}

{else}

  <div class="form-group row {if !empty($field.errors)}has-danger{/if}">

    {if $field.type !== 'checkbox'}
      <div class="col-md-3">
        <label class="col-form-label {if $field.required}required{/if}"
               {if !in_array($field.type, ['radio-buttons', 'birthday'])}for="{$field.name}"{/if}>{$field.label}</label>
      </div>
    {/if}

    <div class="col-md-9 {if $field.type === 'checkbox'}offset-md-3{/if}">

      {if $field.type === 'select'}

        {block name='form_field_item_select'}
          <select class="custom-select" id="{$field.name}" name="{$field.name}" {if $field.required}required{/if}>
            <option value disabled selected>{l s='-- please choose --' d='Shop.CreathemeGlobal'}</option>
            {foreach from=$field.availableValues item=label key=value}
              <option value="{$value}" {if $value eq $field.value}selected{/if}>{$label}</option>
            {/foreach}
          </select>
        {/block}

      {elseif $field.type === 'countrySelect'}

        {block name='form_field_item_country'}
          <select class="custom-select js-country" id="{$field.name}" name="{$field.name}" {if $field.required}required{/if}>
            <option value disabled selected>{l s='-- please choose --' d='Shop.CreathemeGlobal'}</option>
            {foreach from=$field.availableValues item=label key=value}
              <option value="{$value}" {if $value eq $field.value}selected{/if}>{$label}</option>
            {/foreach}
          </select>
        {/block}

      {elseif $field.type === 'radio-buttons'}

        {block name='form_field_item_radio'}
          <div class="form-control-static">
            {foreach from=$field.availableValues item=label key=value}
              <label class="custom-control custom-radio custom-control-inline mb-0" for="{$field.name}-{$value}">
                <input class="custom-control-input" id="{$field.name}-{$value}" name="{$field.name}" type="radio" value="{$value}"
                       {if $value eq $field.value}checked{/if} {if $field.required}required{/if}>
                <span class="custom-control-description">{$label}</span>
              </label>
            {/foreach}
          </div>
        {/block}

      {elseif $field.type === 'checkbox'}

        {block name='form_field_item_checkbox'}
          <label class="custom-control custom-checkbox mb-0">
            <input class="custom-control-input" name="{$field.name}" type="checkbox" value="1"
                   {if $field.value}checked{/if} {if $field.required}required{/if}>
            <span class="custom-control-description">{$field.label nofilter}</span>
          </label>
        {/block}

      {elseif $field.type === 'date'}

        {block name='form_field_item_date'}
          <input class="form-control" id="{$field.name}" name="{$field.name}" type="date" value="{$field.value}"
                 placeholder="{if isset($field.availableValues.placeholder)}{$field.availableValues.placeholder}{/if}">
          {if isset($field.availableValues.comment)}<span class="form-text">{$field.availableValues.comment}</span>{/if}
        {/block}

      {elseif $field.type === 'birthday'}

        {block name='form_field_item_birthday'}
          <div class="js-parent-focus">
            {html_select_date field_order=DMY time={$field.value} field_array={$field.name} prefix=false reverse_years=true field_separator='<br>'
                              day_extra='class="form-control form-control-select"' month_extra='class="form-control form-control-select"'
                              year_extra='class="form-control form-control-select"' day_empty={l s='-- day --' d='Shop.CreathemeGlobal'}
                              month_empty={l s='-- month --' d='Shop.CreathemeGlobal'} year_empty={l s='-- year --' d='Shop.CreathemeGlobal'}
                              start_year={'Y'|date}-100 end_year={'Y'|date}}
          </div>
        {/block}

      {elseif $field.type === 'password'}

        {block name='form_field_item_password'}
          <div class="input-group js-parent-focus">
            <input class="form-control js-child-focus js-visible-password" id="{$field.name}" name="{$field.name}" type="password" placeholder="{$field.label}" value=""
                   title="{l s='At least 5 characters long' d='Shop.CreathemeGlobal'}" aria-label="{l s='At least 5 characters long' d='Shop.CreathemeGlobal'}"
                   pattern=".{literal}{{/literal}5,{literal}}{/literal}" {if $field.required}required{/if} {if !empty($field.autocomplete)}autocomplete="{$field.autocomplete}"{/if}>
            <span class="input-group-btn">
              <button class="btn btn-secondary" type="button" data-action="show-password" data-text-show="{l s='Show' d='Shop.CreathemeGlobal'}"
                      data-text-hide="{l s='Hide' d='Shop.CreathemeGlobal'}">{l s='Show' d='Shop.CreathemeGlobal'}</button>
            </span>
          </div>
        {/block}

      {else}

        {block name='form_field_item_other'}
          <input class="form-control" id="{$field.name}" name="{$field.name}" type="{$field.type}" placeholder="{$field.label}" value="{$field.value}"
                 {if isset($field.availableValues.placeholder)}placeholder="{$field.availableValues.placeholder}"{/if} {if $field.required}required{/if}
                 {if $field.maxLength}maxlength="{$field.maxLength}"{/if} {if !empty($field.autocomplete)}autocomplete="{$field.autocomplete}"{/if}>
          {if isset($field.availableValues.comment)}<span class="form-text">{$field.availableValues.comment}</span>{/if}
        {/block}

      {/if}

      {block name='form_field_errors'}
        {include file='_partials/form-errors.tpl' errors=$field.errors}
      {/block}

    </div>

    {if !$field.required && !in_array($field.type, ['radio-buttons', 'checkbox'])}
      <div class="col-md-3">
        {block name='form_field_comment'}
          <span class="form-control-static form-text mt-0">{l s='Optional' d='Shop.CreathemeGlobal'}</span>
        {/block}
      </div>
    {/if}

  </div>

{/if}
