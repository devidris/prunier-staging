{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='page.tpl'}

{block name='page_title'}{l s='Create an account' d='Shop.CreathemeCustomer'}{/block}

{block name='page_content'}
  {block name='register_form_container'}
    {$hook_create_account_top nofilter}

    <section class="register-form">
      <div class="register-container">
        <!-- Colonne 1 : Message -->
        <div class="register-message">
          <p>
            {l s='Already have an account?' d='Shop.CreathemeCustomer'}
            <span class="text-primary" data-ob="{$urls.pages.authentication|base64_encode}">{l s='Log in instead!' d='Shop.CreathemeCustomer'}</span>
          </p>
        </div>

        <!-- Colonne 2 : Formulaire d'inscription -->
        <div class="register-form">
          {render file='customer/_partials/customer-form.tpl' ui=$register_form}
        </div>
      </div>
    </section>

    <!-- Ajouter le CSS ici -->
    <style>
      .register-container {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
      }

      .register-message {
        flex: 1;
        margin-right: 20px;
      }

      .register-form {
        flex: 2;
      }
    </style>

  {/block}
{/block}




























