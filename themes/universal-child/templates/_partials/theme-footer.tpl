{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<div class="col-12 py-4" id="theme-footer">

  <span class="circles-footer-1 circles position-absolute hidden-md-down"></span>
  <span class="dots-footer-1 dots position-absolute hidden-md-down"></span>
  <span class="circles-footer-2 circles position-absolute hidden-md-down"></span>
  <span class="dots-footer-2 dots position-absolute hidden-md-down"></span>
  <span class="circles-footer-3 circles position-absolute hidden-md-down"></span>

  <div class="footer-img-txt w-100 text-center mx-auto py-4">
    <a href="/"><img class="footer-img lazy mb-3" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                    data-src="{$urls.img_url}footer-img-{$id_shop}.png" alt="" width="57" height="54"></a>
    {if $pte_footertext}<div class="footer-txt">{$pte_footertext|nl2br nofilter}</div>{/if}
    {widget name='ps_socialfollow' hook='displayFooter'}
  </div>

  <div class="d-flex flex-wrap flex-lg-nowrap justify-content-between py-4">

    <div class="footer-links footer-block">
      <p class="footer-title h3 font-weight-bold hidden-sm-down mb-lg-4 mb-xl-2">{$pte_footertitle_1}</p>
      <div class="title pointer hidden-md-up py-2" data-target="#footer-links-1" data-toggle="collapse">
        <span class="h3 mb-0">{$pte_footertitle_1}</span>
        <i class="icon-arrow-drop-down navbar-toggler float-right text-primary p-0" aria-hidden="true"></i>
      </div>
      <div class="collapse" id="footer-links-1" data-parent="#theme-footer">
        <ul class="list-unstyled py-3 py-md-0">
          {foreach from=$pte_footerlinks_1 item=link}
            {if $page.page_name == 'index'}
              <li><a href="{$link.url}">{$link.title}</a></li>
            {else}
              <li><span data-ob="{$link.url|base64_encode}">{$link.title}</span></li>
            {/if}
          {/foreach}
        </ul>
      </div>
    </div>

    <div class="footer-links footer-block">
      <p class="footer-title h3 font-weight-bold hidden-sm-down mb-lg-4 mb-xl-2">{$pte_footertitle_2}</p>
      <div class="title pointer hidden-md-up py-2" data-target="#footer-links-2" data-toggle="collapse">
        <span class="h3 mb-0">{$pte_footertitle_2}</span>
        <i class="icon-arrow-drop-down navbar-toggler float-right text-primary p-0" aria-hidden="true"></i>
      </div>
      <div class="collapse" id="footer-links-2" data-parent="#theme-footer">
        <ul class="list-unstyled py-3 py-md-0">
          {foreach from=$pte_footerlinks_2 item=link}
            {if $page.page_name == 'index'}
              <li><a href="{$link.url}">{$link.title}</a></li>
            {else}
              <li><span data-ob="{$link.url|base64_encode}">{$link.title}</span></li>
            {/if}
          {/foreach}
        </ul>
      </div>
    </div>

    <div class="footer-links footer-block">
      <p class="footer-title h3 font-weight-bold hidden-sm-down mb-lg-4 mb-xl-2">{$pte_footertitle_3}</p>
      <div class="title pointer hidden-md-up py-2" data-target="#footer-links-3" data-toggle="collapse">
        <span class="h3 mb-0">{$pte_footertitle_3}</span>
        <i class="icon-arrow-drop-down navbar-toggler float-right text-primary p-0" aria-hidden="true"></i>
      </div>
      <div class="collapse" id="footer-links-3" data-parent="#theme-footer">
        <ul class="list-unstyled py-3 py-md-0">
          {foreach from=$pte_footerlinks_3 item=link}
            {if $page.page_name == 'index'}
              <li><a href="{$link.url}">{$link.title}</a></li>
            {else}
              <li><span data-ob="{$link.url|base64_encode}">{$link.title}</span></li>
            {/if}
          {/foreach}
        </ul>
      </div>
    </div>

    {widget name='ps_emailsubscription' hook='displayFooter'}

  </div>

</div>
