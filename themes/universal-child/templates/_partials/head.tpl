{if isset($pte_basefontfamily) && isset($pte_titlefontfamily) && isset($pte_pricefontfamily)}
  <link rel="preconnect" href="//fonts.gstatic.com/" crossorigin>
  {if $pte_basefontfamily == $pte_titlefontfamily && $pte_titlefontfamily == $pte_pricefontfamily}
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Material+Icons%7C{$pte_basefontfamily}:400,500,700&amp;display=swap"
          media="print" onload="this.media='all'">
  {elseif $pte_basefontfamily != $pte_titlefontfamily && $pte_titlefontfamily == $pte_pricefontfamily}
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Material+Icons%7C{$pte_basefontfamily}:400,500,700%7C{$pte_titlefontfamily}:400,700&amp;display=swap"
          media="print" onload="this.media='all'">
  {elseif $pte_basefontfamily != $pte_titlefontfamily && $pte_titlefontfamily != $pte_pricefontfamily}
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Material+Icons%7C{$pte_basefontfamily}:400,500,700%7C{$pte_titlefontfamily}:400,700%7C{$pte_pricefontfamily}:400,700&amp;display=swap"
          media="print" onload="this.media='all'">
  {/if}
{/if}
<link rel="preload" href="{$theme_dir}assets/fonts/fonts.css" as="style">
<link rel="preload" href="{$theme_dir}assets/fonts/icomoon.woff" as="font" crossorigin>
{foreach $stylesheets.external as $stylesheet}
  <link rel="preload" href="{$stylesheet.uri}?time=q" as="style">
{/foreach}

{foreach $javascript.bottom.external as $js}
  <link rel="preload" href="{$js.uri}" as="script">
{/foreach}

{block name='head_charset'}
  <meta charset="utf-8">
{/block}

{block name='head_ie_compatibility'}
  <meta http-equiv="x-ua-compatible" content="ie=edge">
{/block}

{block name='head_seo'}
  <title>{block name='head_seo_title'}{$page.meta.title}{/block}</title>
  {block name='hook_after_title_tag'}{hook h='displayAfterTitleTag'}{/block}
  <meta name="keywords" content="{block name='head_seo_keywords'}{$page.meta.keywords}{/block}">

  <meta name="description" content="{block name='head_seo_description'}{$page.meta.description}{/block}">
  {if $page.meta.robots !== 'index'}<meta name="robots" content="{$page.meta.robots}">{/if}
  {*{if $page.canonical}<link rel="canonical" href="{$page.canonical}">{/if}
   {if isset($urls.alternative_langs)}
    {block name='head_hreflang'}
      {foreach from=$urls.alternative_langs item=pageUrl key=code}
        <link rel="alternate" href="{$pageUrl}" hreflang="{$code}">
      {/foreach}
    {/block}
  {/if} *}
{/block}

{block name='head_viewport'}
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1{if !isset($pte_zoom) || !$pte_zoom}, maximum-scale=1{/if}">
{/block}
  <meta name="facebook-domain-verification" content="o8ovs0ej6zpcvi9jcfgcwhp4yz57fe" />
{block name='head_icons'}
  <link rel="icon" type="image/vnd.microsoft.icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
  <link rel="shortcut icon" type="image/x-icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
{/block}

{block name='stylesheets'}
  {include file='_partials/stylesheets.tpl' stylesheets=$stylesheets}
{/block}

{block name='javascript_head'}
  {include file='_partials/javascript.tpl' javascript=$javascript.head vars=$js_custom_vars}
{/block}

{block name='hook_header'}{$HOOK_HEADER nofilter}{/block}

{block name='hook_extra'}{/block}

{literal}
<!-- Google Tag Manager -->
<script data-cookieconsent="ignore">    window.dataLayer = window.dataLayer || [];    function gtag() {        dataLayer.push(arguments);    }    gtag("consent", "default", {        ad_personalization: "denied",        ad_storage: "denied",        ad_user_data: "denied",        analytics_storage: "denied",        functionality_storage: "denied",        personalization_storage: "denied",        security_storage: "granted",        wait_for_update: 500,    });    gtag("set", "ads_data_redaction", true);    gtag("set", "url_passthrough", false);</script>

<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
  new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
          j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
          'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
          })(window,document,'script','dataLayer','GTM-TCP2F975');</script>
<!-- End Google Tag Manager -->
{/literal}

{* Matomo Analytics *}
{literal}
<script>
  var _paq = window._paq = window._paq || [];
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  _paq.push(['enableHeartBeatTimer']);
  (function() {
    var u="http://51.255.69.43:8090/";
    _paq.push(['setTrackerUrl', u+'matomo.php']);
    _paq.push(['setSiteId', '5']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
{/literal}
{* End Matomo Code *}
