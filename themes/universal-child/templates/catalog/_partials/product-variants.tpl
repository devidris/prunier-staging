{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title h2" id="exampleModalLabel">Caviar Baeri ou Oscietra, quelles différences ?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p><strong>La caviar Baeri.</strong></p>
                <p class="text-justify" style="line-height: 28px;">Il incarne <strong>l’archétype du caviar français de Prunier</strong> avec un grain naturellement <strong>foncé</strong>, <strong>profond</strong> et <strong>soyeux</strong>. Sa <strong>finesse</strong> révèle ses caractéristiques harmonieuses uniques. Ses <strong>arômes francs, généreux</strong> et <strong>iodés</strong> possèdent une belle <strong>longueur en bouche</strong> et peuvent évoquer la <strong>noisette</strong>, selon les préparations de Prunier. Le Baeri représente plus grande partie de l’élevage en France et dans le monde et provient de Sibérie. Nous attendons patiemment 7 années que la femelle esturgeon prépare ses premiers grains.</p>
                <p><strong>Le caviar Osciètre (ou Ossetra)</strong></p>
                <p class="text-justify" style="line-height: 28px;">Issu de l’Acipenser (esturgeon) Gueldanstaedtii ou Persicus en latin, l’oscietra présente habituellement des grains légèrement plus <strong>enrobés</strong> que son cousin, simplement parce que cette espèce est plus grande. Les couleurs de ce caviar évoluent du <strong>gris foncé</strong> vers <strong>l’ambré</strong>, doré, avec de grandes différences naturelles d’une femelle à l’autre. Chez Prunier, il présente une <strong>texture</strong> légèrement plus ferme, différente du Baeri. Un <strong>arôme</strong> soyeux qui présente une <strong>complexité</strong> différente. Elle persiste et signe en fin de bouche son côté marin et beurré. L’Ossetra peut vivre une centaine d’années dans la nature et peser jusqu’à 200 kg. Il faut attendre une douzaine d’années pour les premiers grains.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-block btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4" data-dismiss="modal">{l s='Back to product' d='Shop.CreathemeCatalog'}</button>
            </div>
        </div>
    </div>
</div>

<div class="product-variants js-product-variants">
  {foreach from=$groups key=id_attribute_group item=group}
    {if !empty($group.attributes)}
      <div class="product-variants-item d-flex justify-content-between align-items-center border-top border-bottom py-2 {if $group.group_type == 'color'}colorblockchoices{/if}">

        <div class="control-label font-weight-bold text-uppercase">
            {$group.name}
            {if $group.name == "Boîte"}
                <br/>
                <span class="boite-selector">{l s='Prunier invites you to choose one of its limited editions illustrated by Yves Saint Laurent.' d='Shop.CreathemeGlobal'}</span>
            {/if}
            {if $group.name == "Espèce"}
                <img data-toggle="modal" data-target="#exampleModal" src="{$urls.img_url}5419310061543238896.svg" width="20px" class="help-espece" alt="Prunier.com, Baeri ou Osciettra">
            {/if}
        </div>

        <div class="control-item {if $group.group_type != 'radio'}py-1{/if}">

          {if $group.group_type == 'select'}

            <select class="custom-select" id="group_{$id_attribute_group}" name="group[{$id_attribute_group}]" aria-label="{$group.name}"
                    data-product-attribute="{$id_attribute_group}">
              {foreach from=$group.attributes key=id_attribute item=group_attribute}
                <option value="{$id_attribute}" {if $group_attribute.selected}selected{/if}>{$group_attribute.name}</option>
              {/foreach}
            </select>

          {elseif $group.group_type == 'color'}
            <ul class="color-list list-unstyled d-flex flex-wrap justify-content-end" id="group_{$id_attribute_group}">
              {foreach from=$group.attributes key=id_attribute item=group_attribute}
                <li class="input-container d-flex position-relative my-1 ml-2">
                  <input class="input-color position-absolute w-100 h-100 {if !$group_attribute.selected}pointer{/if}" name="group[{$id_attribute_group}]"
                         type="radio" value="{$id_attribute}" title="{$group_attribute.name}" aria-label="{$group_attribute.name}"
                         data-product-attribute="{$id_attribute_group}" {if $group_attribute.selected}checked{/if}>
                  <span class="color rounded-circle {if $group_attribute.texture}texture{/if} w-100"
                        style="{if $group_attribute.texture}background:url({$group_attribute.texture}) center/contain
                               {elseif $group_attribute.html_color_code}background-color:{$group_attribute.html_color_code}{/if}"></span>
                </li>
              {/foreach}
            </ul>

          {elseif $group.group_type == 'radio'}

            <ul class="radio-list list-unstyled d-flex flex-wrap justify-content-end" id="group_{$id_attribute_group}">
              {foreach from=$group.attributes key=id_attribute item=group_attribute}
                <li class="input-container d-flex position-relative my-1 ml-2">
                  <input class="input-radio position-absolute w-100 h-100 {if !$group_attribute.selected}pointer{/if}"
                         name="group[{$id_attribute_group}]" type="radio" value="{$id_attribute}" aria-label="{$group.name}"
                         data-product-attribute="{$id_attribute_group}" {if $group_attribute.selected}checked{/if}>
                  <span class="radio-label font-weight-bold py-1 px-3">{$group_attribute.name}</span>
                </li>
              {/foreach}
            </ul>

          {/if}

        </div>
      </div>
    {/if}

  {/foreach}

</div>
