{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{block name='block_social'}
  {if $social_links}
    <div class="block-social d-flex justify-content-center py-2">
      <div class="text-center text-md-right text-lg-left">

        {foreach from=$social_links item=social_link}
          {if $social_link.class != 'googleplus'}
            <span class="{$social_link.class} text-center">
              <span class="block-social-icon blank d-inline-block rounded-circle text-center m-2"
                    data-ob="{$social_link.url|base64_encode}" aria-label="{$social_link.label}">
                {if $social_link.class == 'facebook'}<i class="icon-facebook" aria-hidden="true"></i>{/if}
                {if $social_link.class == 'twitter'}<i class="icon-twitter" aria-hidden="true"></i>{/if}
                {if $social_link.class == 'rss'}<i class="icon-rss" aria-hidden="true"></i>{/if}
                {if $social_link.class == 'youtube'}<i class="icon-youtube" aria-hidden="true"></i>{/if}
                {if $social_link.class == 'pinterest'}<i class="icon-pinterest" aria-hidden="true"></i>{/if}
                {if $social_link.class == 'vimeo'}<i class="icon-vimeo" aria-hidden="true"></i>{/if}
                {if $social_link.class == 'instagram'}<i class="icon-instagram-o" aria-hidden="true"></i>{/if}
                {if $social_link.class == 'linkedin'}<i class="icon-linkedin" aria-hidden="true"></i>{/if}
              </span>
            </span>
          {/if}
        {/foreach}

      </div>
    </div>
  {/if}
{/block}
