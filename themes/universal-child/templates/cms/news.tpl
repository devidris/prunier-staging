{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{extends file='page.tpl'}

{block name='page_header_container'}
    <div style="text-align: center;position:relative;" class="header-container">
        <video style="width: 100%;" class="hidden-mobile" autoplay="" muted="" loop="" playsinline="" id="header_1600"> <source data-src="{$urls.img_url}video-experience.mp4" src="{$urls.img_url}video-experience.mp4"> </video>
        <div id="h-content" style="position: absolute;
    top:50%;
    left:50%;
     transform: translate(-50%, -50%);">
            <span class="circles position-absolute"></span>
            <h1 class="display-3 mb-3 text-white">Newsletter</h1>
        </div>
    </div>

{/block}

{block name='page_content_container'}

    <div style="max-width: 700px;margin:0 auto;">
        <div class="text-center">
            {if $notification}
                <div class="alert alert-success">{l s="Votre inscription à la newsletter Prunier est validée." d='Shop.CreathemeGlobal'}</div>
            {/if}
            <h1>Newsletter</h1>
            <p style="font-size: 15px;line-height: 25px;">{l s="newsletter content" d='Shop.CreathemeGlobal'}</p>
        </div>
        <hr>
        <div>
            <form action="" method="POST">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="firstname">{l s="Votre prénom" d='Shop.CreathemeGlobal'}</label>
                            <input type="text" name="firstname" id="firstname" class="form-control" placeholder="{l s="Votre prénom" d='Shop.CreathemeGlobal'}" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="lastname">{l s="Votre nom" d='Shop.CreathemeGlobal'}</label>
                            <input type="text" name="lastname" id="lastname" class="form-control" placeholder="{l s="Votre nom" d='Shop.CreathemeGlobal'}" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="email">{l s="Votre email" d='Shop.CreathemeGlobal'}</label>
                            <input type="email" name="email" id="email" class="form-control" placeholder="{l s="Votre email" d='Shop.CreathemeGlobal'}" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="submit" name="newsletter" style="width:100%;text-align: center;" class="btn btn-outline-primary rounded-0 font-weight-bold text-uppercase py-3 px-4" value="{l s="Valider" d='Shop.CreathemeGlobal'}">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

{/block}
