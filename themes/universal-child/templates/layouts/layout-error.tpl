{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<!DOCTYPE html>
<html lang="">

  <head>
    <link rel="preconnect" href="//fonts.gstatic.com/" crossorigin>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cormorant:400,500,700&amp;display=swap" media="print" onload="this.media='all'">

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    {block name='head_seo'}
      <title>{block name='head_seo_title'}{/block}</title>
      <meta name="description" content="{block name='head_seo_description'}{/block}">
    {/block}

    {block name='head_viewport'}
      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    {/block}

    {block name='stylesheets'}
      {include file='_partials/stylesheets.tpl' stylesheets=$stylesheets}
    {/block}
  </head>

  <body>
    <div id="layout-error">{block name='content'}{/block}</div>
  </body>

</html>
