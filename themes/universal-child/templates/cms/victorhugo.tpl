{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='page.tpl'}

{block name='page_header_container'}
    <header class="page-header position-relative text-center text-white overflow-hidden flex-shrink-0 py-5">
        <div class="container">

            <img class="header-cover position-absolute" src="{$urls.img_url}vhbanner.png" alt="" loading="lazy"
                 width="1440" height="450">

            <div class="header-text container position-relative mt-5 pt-5">
                <h1 style="text-shadow: #00000047 1px 0 10px;" class="display-4 mt-5">{l s='VH HEADER title' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</h1>
                <div style="text-shadow: #00000047 1px 0 10px;" class="header-text-content h4 mx-auto mb-5">{l s='VH HEADER subtitle 2' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</div>
            </div>

        </div>
    </header>
{/block}

{block name='page_content_container'}
    <div class="container">
        <div class="speedLinkCategoryBloc bg-transparent my-5">
            <span>{l s='Quick [1]access[/1]'  d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</span>
            <hr>
            <div class="overflowOnMobile">
                <a href="#carte" class="speedLinkCategory" style="background:#E7C966">{l s='MENU 02'  d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</a>
                <a href="/modules/pruniermenu/pdfs/prunier_victor_hugo_menu{if Context::getContext()->language->id != 1}_en{/if}.pdf" target="_blank" class="speedLinkCategory">{l s='MENU 01'  d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</a>
                <a href="#private" class="speedLinkCategory">{l s='MENU 05'  d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</a>
                <a href="#homeWork" class="speedLinkCategory">{l s='MENU 03'  d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</a>
            </div>
        </div>
    </div>

    {if $news_1_active == 'on'}
    <section style="
        background-color:#FFFCF8;
        width: 100vw;
        max-width: 100vw;
        position: relative;
        margin-left: calc(-50vw + -10px);
        left: 50%;">
        <div class="row gx-0 mr-0">
            <div class="col-md-6 order-1 order-md-1 my-auto mx-0 px-0">
                <div class=" mx-0 px-0 vh-news-image mbm-30" style="background-image: url('/modules/prunierallenonews/uploads/{$news_1_file}');">
                    <div style="
                        text-align: center;
                        height: 100%;
                        display: flex;
                        place-content: center;
                        align-items: center;"></div>
                </div>
            </div>
            <div class="col-md-6 order-2 order-md-2 my-auto align-self-center mx-0 px-5 mb-mobile-5">
                <div class="px-0 container-sm mx-auto">
                    {if $news_1_alert_fr or $news_1_alert_en}
                        <span style="
    background-color: #e6c966;
    padding: 5px;
    margin-bottom: 13px;
    display: inline-block;
    font-weight: bold;
    color: white;
">{if Context::getContext()->language->id == 1}{$news_1_alert_fr}{else}{$news_1_alert_en}{/if}</span>
                    {/if}
                    <h2 class="display-4">{if Context::getContext()->language->id == 1}{$news_1_title_fr}{else}{$news_1_title_en}{/if}</h2>
                    <div class="text-justify mt-3 contentBoxExtra" style="line-height: 29px;font-size: 16px;">
                        {if Context::getContext()->language->id == 1}{Configuration::get('news_1_content_fr') nofilter}{else}{Configuration::get('news_1_content_en') nofilter}{/if}
                    </div>
                    <div>
                        {if Configuration::get('news_1_book_button') == "on"}
                        <a href="" data-toggle="modal" data-target="#modalBookATable"
                           class="btn btn-outline-primary rounded-0 text-uppercase py-3 px-5 d-none d-md-block">{l s='[1]Book[/1] a table' d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</a>
                        {/if}
                        <a href="/pdf/saint_valentin{if Context::getContext()->language->id != 1}_en{/if}.pdf"
                           class="py-3 px-4 d-none" style="color: #E7C966"><img
                                    src="{$urls.img_url}download.svg" alt=""
                                    class="mr-2"> {l s="Download the Valentine's Day [1]menu[/1]" d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {/if}

    {if $news_2_active == 'on'}
    <section style="
        background-color:#FFFCF8;
        width: 100vw;
        max-width: 100vw;
        position: relative;
        margin-left: calc(-50vw + -10px);
        left: 50%;">
        <div class="row gx-0 mr-0">
            <div class="col-md-6 order-2 order-md-1 my-auto align-self-center mx-0 px-5 mbm-30">
                <div class="px-0 container-sm mx-auto">

                    {if $news_2_alert_fr or $news_2_alert_en}
                    <span style="
    background-color: #e6c966;
    padding: 5px;
    margin-bottom: 13px;
    display: inline-block;
    font-weight: bold;
    color: white;
">{if Context::getContext()->language->id == 1}{$news_2_alert_fr}{else}{$news_2_alert_en}{/if}</span>
                    {/if}
                    <h2 class="display-4">{if Context::getContext()->language->id == 1}{$news_2_title_fr}{else}{$news_2_title_en}{/if}</h2>
                    <p class="d-none">{l s="Reserve your platter 24 hours before your meal at Prunier Victor Hugo:" d='Shop.CreathemeGlobal'} <u><a href="tel:+33144173585">+33144173585</a></u></p>
                    <div class="text-justify mt-3 contentBoxExtra" style="line-height: 29px;font-size: 16px;">
                        {if Context::getContext()->language->id == 1}{Configuration::get('news_2_content_fr') nofilter}{else}{Configuration::get('news_2_content_en') nofilter}{/if}
                    </div>

                    <div>
                        {if Configuration::get('news_2_book_button') == "on"}
                            <a href="" data-toggle="modal" data-target="#modalBookATable"
                               class="btn btn-outline-primary rounded-0 text-uppercase py-3 px-5 d-none d-md-block">{l s='[1]Book[/1] a table' d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</a>
                        {/if}
                        <a href="" data-toggle="modal" data-target="#modalBookATable"
                           class="py-3 px-4 d-none" style="color: #E7C966"><img
                                    src="{$urls.img_url}download.svg" alt=""
                                    class="mr-2"> {l s='Download [1]Menu[/1]' d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 order-1 order-md-2 my-auto mx-0 px-0">
                <div class=" mx-0 px-0 vh-news-image mbm-30" style="background-image: url('/modules/prunierallenonews/uploads/{$news_2_file}">
                    <div style="
                        text-align: center;
                        height: 100%;
                        display: flex;
                        place-content: center;
                        align-items: center;"></div>
                </div>
            </div>
        </div>
    </section>
    {/if}
    <div class="mt-5 text-center align-self-center pt-5" id="xAlleno">
        <h2 class="display-4 text-center">{l s='YA 01 title' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
        <p class="text-center mx-auto mb-5" style="line-height: 29px;">
            {l s='VH HEADER text' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}
        </p>
        <a href="" data-toggle="modal" data-target="#modalBookATable"
           class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4 d-md-block mb-5 w-25-desktop mx-auto">{l s='Book a table' d='Shop.CreathemeGlobal'}</a>

        <div class="w-100 mb-mobile-100">
            <img src="{$urls.img_url}alleno.png" class="img-fluid w-100" alt="Caviar Prunier">
            <div style="
                        text-align: center;
                        height: 100%;
                        display: flex;
                        place-content: end;
                        align-items: center;
                        position: relative;
                        bottom: 150px;
                        cursor:pointer;
                        z-index: 100;" data-toggle="modal" data-target="#prunierAllenoVideo" class="mt-5 pt-5 ml-auto mt-md-auto">
                <img src="{$urls.img_url}play.svg" alt="Lire une vidéo" class="img-fluid" style="background:#E7C966; border-radius:50%; max-width: 50px;margin-bottom: 7px;">
                <div class="text-white mr-md-4">
                    <span class="h1" style="text-shadow: #000 1px 0 10px;">{l s='Watch video' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container sm-container mb-5 pb-5" id="book">
        <div class="row justify-content-between">
            <div class="col-md-5 order-3 order-md-1 mt-5 my-auto">
                <div class="text-center">
                    <a href="/modules/pruniermenu/pdfs/prunier_victor_hugo_menu{if Context::getContext()->language->id != 1}_en{/if}.pdf" target="_blank" class="btn btn-outline-primary rounded-0 text-uppercase py-3 px-4 d-md-inline-block mb-2">{l s='Download the Restaurant [1]Menu[/1]' d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</a>
                    <a href="/modules/pruniermenu/pdfs/prunier_victor_hugo_brunch.pdf" class="d-block mb-5"><u>{l s='Brunch [1]menu[/1]' d='Shop.CreathemeGlobal'  sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}</u></a>
                </div>

                <div class="text-center">
                </div>
                <h2 class="display-5 text-center text-md-left">{l s='YA 02 title' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</h2>
                <p class="mt-3 text-justify" style="line-height: 29px;">
                    {l s='YA 02 text' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}
                </p>
            </div>
            <div class="col-6 col-md-3 order-1 order-md-2">
                <figure>
                    <img src="{$urls.img_url}pm4.png" class="img-fluid" alt="">
                    <figcaption class="text-center fs-13 mt-3 mb-4">{l s='PLAT 01' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</figcaption>
                </figure>
                <figure>
                    <img src="{$urls.img_url}pm5.png" class="img-fluid" alt="">
                    <figcaption class="text-center fs-13 mt-3 mb-4">{l s='PLAT 02' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</figcaption>
                </figure>
            </div>
            <div class="col-6 col-md-3 order-2 order-md-3">
                <figure>
                    <img src="{$urls.img_url}pm1.png" class="img-fluid" alt="">
                    <figcaption class="text-center fs-13 mt-3 mb-4">{l s='PLAT 03' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</figcaption>
                </figure>
                <figure>
                    <img src="{$urls.img_url}pm9.png" class="img-fluid" alt="">
                    <figcaption class="text-center fs-13 mt-3 mb-4">{l s='PLAT 04' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</figcaption>
                </figure>
            </div>
        </div>
        <div class="row justify-content-between mt-desktop-5">
            <div class="col-6 col-md-3 order-2 order-md-1">
                <img src="{$urls.img_url}pm6.png" class="img-fluid" alt="">
                <figcaption class="text-center fs-13 mt-3 mb-4">{l s='PLAT 05' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</figcaption>
            </div>
            <div class="col-6 col-md-3 order-3 order-md-2">
                <img src="{$urls.img_url}pm7.png" class="img-fluid" alt="">
                <figcaption class="text-center fs-13 mt-3 mb-4">{l s='PLAT 06' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</figcaption>
            </div>
            <div class="col-md-5 order-1 order-md-3 my-auto mb-mobile-5">
                <p class="mt-3 text-justify" style="line-height: 29px;">
                    {l s='YA 03 text' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}
                </p>
            </div>
        </div>

        <a href="" data-toggle="modal" data-target="#modalBookATable" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4 d-none d-md-block mb-5 w-25-desktop mx-auto mt-5">{l s='Book a table' d='Shop.CreathemeGlobal'}</a>
    </div>
    <section id="takeaway"
             class="page-header position-relative text-center text-white overflow-hidden flex-shrink-0 pt-5 mt-5 d-none"
             style="
                min-height:600px;
                width: 100vw;
                max-width: 100vw;
                position: relative;
                margin-left: calc(-50vw + -10px);
                left: 50%">
        <div class="container">
            <img class="header-cover position-absolute" src="{$urls.img_url}sandwich.jpg" alt="" loading="lazy"
                 width="1440" height="450">
            <div class="row container mx-auto px-5 mt-5 pt-5 pb-5 mb-5" style="position: relative;
    bottom: -150px;">
                <div class="header-text container position-relative mt-5 pt-5 pb-5 mb-5 col-8 text-left">
                    <h1 class="display-4 mt-5">{l s='Takeaway title' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</h1>
                    <div class="header-text-content h4 mb-5">{l s='Takeaway content' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</div>
                </div>
                <div class="align-self-center position-relative mt-5 pt-5 col-4 my-auto">
                    <div class="d-none">
                        <a href="" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4 d-none d-md-inline-block mx-auto mt-5">{l s='Download the menu' d='Shop.CreathemeGlobal'}</a>
                    </div>
                    <div class="d-none">
                        <a href="" data-toggle="modal" data-target="#modalBookATable"
                           class="border-0 px-4 d-none d-md-inline-block mb-5 mx-auto py-3" style="color: #E7C966"><i
                                    class="icon-phone mr-2"></i>{l s='Call & [1]place order[/1]' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div id="homeWork" class="container sm-container" style="margin-top: 100px;margin-bottom: 150px;background-color: #FDFAF6;padding: 40px 10px;">
        <div style="max-width: 700px;margin: 0 auto;" class="text-center">
            <h2 class="display-4">{l s="Plateaux title" d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
            <p class="mt-3 text-center" style="line-height: 29px;">
                {l s='Plateaux content' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
            </p>
        </div>
    </div>
    <div id="private">
        <div class="row my-5">
            <div class="col-md-6 my-auto mr-5">
                <div class="owl-carousel mr-5" id="freskVH">
                    <div style="background-image: url('{$urls.img_url}vh1.jpeg');height: 418px;background-size: cover;background-position: center;">
                    </div>
                    <div style="background-image: url('{$urls.img_url}vh2.jpeg');height: 418px;background-size: cover;background-position: center;">
                    </div>
                    <div style="background-image: url('{$urls.img_url}vh3.jpeg');height: 418px;background-size: cover;background-position: center;">
                    </div>
                    <div style="background-image: url('{$urls.img_url}vh4.jpeg');height: 418px;background-size: cover;background-position: center;">
                    </div>
                    <div style="background-image: url('{$urls.img_url}vh5.jpeg');height: 418px;background-size: cover;background-position: center;">
                    </div>
                </div>
            </div>
            <div class="col-md-4 align-self-center mt-4 my-md-auto mx-auto w-auto">
                <h2 class="display-4">{l s='Privatizations' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
                <span>16 Av. Victor Hugo, 75116 Paris</span>
                <p class="mt-3 text-left mx-auto" style="line-height: 29px;">
                    {l s='Privatizations text' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}
                </p>
                <div class="d-none">
                    <a href="" data-toggle="modal" data-target="#modalBookATable"
                       class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4">{l s='Contact us' d='Shop.CreathemeGlobal'}</a>
                </div>
                <div class="d-none">
                    <a href="" data-toggle="modal" data-target="#modalBookATable"
                       class="d-none d-md-inline-block mb-5 py-3" style="color: #E7C966">
                        <img src="{$urls.img_url}download.svg" alt="" class="mr-2">
                        {l s='Download [1]event brochure[/1]' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
                    </a>
                </div>
                <hr>
                <div style="line-height: 25px;">
                    {if Context::getContext()->language->id == 1}
                        <strong>Votre contact</strong><br>
                    {else}
                        <strong>Your contact</strong><br>
                    {/if}
                    Sarah Duplan<br>
                    <i class="icon-mail mr-1"></i> <a href="mailto:sarah.duplan@prunier.com"><u>sarah.duplan@prunier.com</u></a><br>
                    <i class="icon-phone mr-1"></i> <a href="tel:+33144173585" class="mb-5"><u>+33 7 68 97 79 76</u></a>
                </div>
            </div>
        </div>
    </div>
    <section class="page-header position-relative text-center text-white overflow-hidden flex-shrink-0 pt-5"
             style="min-height:800px;
    width: 100vw;
    max-width: 100vw;
    margin-top: 150px;
    position: relative;
    margin-left: calc(-50vw + -10px);
    left: 50%">
        <div class="container">
            <img class="header-cover position-absolute" src="{$urls.img_url}prunier_bar_champagne.jpg" alt="" loading="lazy"
                 width="1440" height="450">
            <div class="container mx-auto mt-5 pt-5 w-75" style="position: relative;
    bottom: -200px;">
                <div class="header-text container position-relative mt-5 pt-5">
                    <img src="{$urls.img_url}play.svg" class="mt-5 mb-4" data-toggle="modal" data-target="#prunierVideo" alt="Lire une vidéo"
                         style="background:#E7C966; border-radius:50%; width: 50px;cursor:pointer;">
                    <h1 class="display-4 font-weight-light w-50 mx-auto">{l s='PH title' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>', '[2]' => '<br/>']}</h1>
                </div>
            </div>
        </div>
    </section>

    <section class="container my-5" id="institutionContent">
        <h2 class="display-5 text-center mx-auto w-50-desktop">{l s='PH subtitle' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
        <div class="row mt-5 mx-5">
            <div class="col-md-6">
                <p class="text-justify" style="line-height: 35px;">
                    {l s='PH text 01' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
                </p>
                <p class="mt-md-3 text-justify" style="line-height: 35px;">
                    {l s='PH text 02' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
                </p>
            </div>
            <div class="col-md-6">
                <p class="text-justify" style="line-height: 35px;">
                    {l s='PH text 03' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
                </p>
                <p class="mt-md-3 text-justify" style="line-height: 35px;">
                    {l s='PH text 04' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
                </p>
            </div>
        </div>
    </section>

    <section id="carte" style="background-color: #FDFAF6;padding: 40px 10px;margin: 130px 0;">
        <div class="container">
            <div style="max-width: 750px;margin:0 auto;" class="text-center">
                <img src="{$urls.img_url}gift-illustration.png" width="300px" alt="{l s='Gift card' d='Shop.CreathemeGlobal'}"><br/>
                <h2 class="display-4">{l s='GIFT CARD title' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
                <p style="line-height: 29px;">
                    {l s="GIFT CARD text" d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>','[3]' => "<i>", '[/3]' => '</i>']}
                </p>
                <a href="{if Context::getContext()->language->id == 1}/fr/bons-cadeaux{else}/en/gift-card{/if}" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4">{l s='Offer a gift card' d='Shop.CreathemeGlobal'}</a>
            </div>
        </div>
    </section>

    <section class="my-5 py-5">
        {hook h='displayHome' mod='ps_featuredproducts'}
    </section>

    <div class="w-75 mx-auto p-2 p-md-5" style="margin-top: 80px;">
        <hr>
        <div class="container sm-container container-fluid text-center">
            <div class="my-auto text-center mx-auto">
                <h2 class="display-4">{l s='JU title' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}</h2>
                <p class="mt-3 text-center" style="line-height: 29px;">
                    {l s='JU text' d='Shop.CreathemeGlobal' sprintf=['[1]' => "<strong>", '[/1]' => '</strong>']}
                </p>
                <a href="https://www.linkedin.com/jobs/search/?currentJobId=3276490028&amp;distance=25.0&amp;geoId=105015875&amp;keywords=pavillon%20ledoyen" target="_blank" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4">{l s='Discover our offers' d='Shop.CreathemeGlobal'}</a>
            </div>
        </div>
    </div>

    <!-- Modal book a table -->
    <div class="modal fade" id="modalBookATable" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                </div>
            </div>
        </div>
    </div>


    <!-- Modal Video Prunier Alléno -->
    <div class="modal fade" id="prunierAllenoVideo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <video controls width="100%">
                        <source src="{$urls.img_url}prunierxalleno.mp4"
                                type="video/mp4">
                    </video>
                    <a href="" class="btn btn-outline-primary btn-block" data-dismiss="modal">Fermer</a>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal Video Prunier -->
    <div class="modal fade" id="prunierVideo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-body">
                    <video controls width="100%">
                        <source src="{$urls.img_url}prunierall.mp4"
                                type="video/mp4">
                    </video>
                </div>
            </div>
        </div
    </div>

{/block}
