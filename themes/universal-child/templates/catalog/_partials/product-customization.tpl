{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{if !$configuration.is_catalog}
  <section class="product-customization js-product-customization col-lg-11">
    <div class="card card-block border-top-0 rounded-0 p-4" style="background: black; color: white;">

      <p class="h3 font-weight-bold mb-lg-4 mb-xl-2">{l s='Joindre un message personnalisé à votre coffret' d='Shop.CreathemeCatalog'}</p>

      {block name='product_customization_form'}
        <form class="needs-validation" method="post" action="{$product.url}" enctype="multipart/form-data">

          <ul class="list-unstyled">
            {foreach from=$customizations.fields item=field}
              <li class="product-customization-item">

                <label for="{$field.input_name}">
                  {$field.label}
                  <span class="form-text d-inline mt-0 ml-1">
                    {if $field.type == 'text'}
                      ({l s='250 char. max' d='Shop.CreathemeCatalog'})
                    {elseif $field.type == 'image'}
                      ({l s='.png .jpg .gif' d='Shop.CreathemeCatalog'})
                    {/if}
                  </span>
                </label>

                {if $field.type == 'text'}

                  <textarea class="product-message form-control" id="{$field.input_name}" name="{$field.input_name}" maxlength="250" style="background: white; color: black;"
                            placeholder="{l s='Tapez votre message ici' d='Shop.CreathemeCatalog'}" {if $field.required}required{/if}></textarea>
                  {if $field.text !== ''}
                    <p class="customization-message mt-3">
                      <span class="text-uppercase">{l s='Saisissez votre message ici:' d='Shop.CreathemeCatalog'}</span>
                      <span class="form-text">{$field.text}</span>
                    </p>
                  {/if}

                {elseif $field.type == 'image'}

                  <div class="custom-file">
                    <input class="custom-file-input js-file-input" id="{$field.input_name}" name="{$field.input_name}" type="file" {if $field.required}required{/if} style="background: white; color: black;">
                    <span class="custom-file-control" data-browse="{l s='Browse' d='Shop.CreathemeCatalog'}">{l s='No selected file' d='Shop.CreathemeCatalog'}</span>
                  </div>
                  {if $field.is_customized}
                    <p class="customization-image mt-3">
                      <span class="text-uppercase">{l s='Saisissez votre message ici:' d='Shop.CreathemeCatalog'}</span>
                      <img class="img-thumbnail" src="{$field.image.small.url}" alt="" loading="lazy">
                      <span class="remove-image text-primary ml-1" data-ob="{$field.remove_image_url|base64_encode}"
                            title="{l s='Remove' d='Shop.CreathemeCatalog'}"><i class="icon-trash-alt" aria-hidden="true"></i></span>
                    </p>
                  {/if}

                {/if}

              </li>
            {/foreach}
          </ul>
              
          <p class="product-customization-info form-text mt-2 mb-0">
            {l s='N\'oubliez pas de sauvegarder votre message pour pouvoir l\'ajouter à votre panier ' d='Shop.CreathemeCatalog'}
          </p>

          <div class="product-customization-save text-right mt-3">
            <button class="btn btn-primary" name="submitCustomizedData" type="submit">{l s='Enregistrer' d='Shop.CreathemeCatalog'}</button>
          </div>

        </form>
      {/block}

    </div>
  </section>
{/if}
