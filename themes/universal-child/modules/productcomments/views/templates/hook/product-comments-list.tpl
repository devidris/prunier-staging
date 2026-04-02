{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

<script>
  var productCommentUpdatePostErrorMessage = '{l|escape:'javascript' s='Your review cannot be sent' d='Shop.CreathemeModules'}';
  var productCommentAbuseReportErrorMessage = '{l|escape:'javascript' s='Your report cannot be sent' d='Shop.CreathemeModules'}';
</script>

<section class="product-comments my-5 mx-lg-5 py-5">
  <div class="card card-block mx-lg-5 p-5">

    <h2 class="product-comments-title display-4 text-center mt-4" id="product-comments-list-header">
      <span class="d-inline-block position-relative">
        <span class="circles-text position-relative">
          {l s='Customers [1]reviews[/1]' d='Shop.CreathemeModules' sprintf=['[1]' => "<span class='font-weight-bold'>", '[/1]' => '</span>']}
        </span>
        <span class="circles position-absolute"></span>
        <span class="dots position-absolute hidden-sm-down"></span>
      </span>
    </h2>

    <div class="text-center mt-n4 mb-5">
      <p class="product-comments-score font-weight-bold mb-0">
        <span class="product-comments-grade">{$average_grade|string_format:"%.1f"}</span>
        <span class="product-comments-total">/5</span>
      </p>
      <p class="comments-nb text-muted mb-0">{l s='Based on %nb_comments% reviews' d='Shop.CreathemeModules' sprintf=['%nb_comments%' => $nb_comments]}</p>
    </div>

    <div class="mb-4">
      {include file='module:productcomments/views/templates/hook/product-comment-item-prototype.tpl' assign='comment_prototype'}
      {include file='module:productcomments/views/templates/hook/empty-product-comment.tpl'}

      {if $nb_comments != 0}
        <div id="product-comments-list" class="owl-carousel border-top position-relative mx-auto pt-5" data-list-comments-url="{$list_comments_url nofilter}"
             data-report-comment-url="{$report_comment_url nofilter}" data-comment-item-prototype="{$comment_prototype|escape:'html_attr'}"
             data-update-comment-usefulness-url="{$update_comment_usefulness_url nofilter}"></div>
      {/if}
    </div>

  </div>
</section>

{include file='module:productcomments/views/templates/hook/alert-modal.tpl'
         modal_id='update-comment-usefulness-post-error' modal_title={l s='Your review cannot be sent' d='Shop.CreathemeModules'}}

{include file='module:productcomments/views/templates/hook/confirm-modal.tpl'
         modal_id='report-comment-confirmation' modal_title={l s='Report review' d='Shop.CreathemeModules'}
         modal_message={l s='Are you sure that you want to report this review?' d='Shop.CreathemeModules'}}

{include file='module:productcomments/views/templates/hook/alert-modal.tpl'
         modal_id='report-comment-posted' modal_title={l s='Report sent' d='Shop.CreathemeModules'}
         modal_message={l s='Your report has been submitted and will be considered by a moderator.' d='Shop.CreathemeModules'}}

{include file='module:productcomments/views/templates/hook/alert-modal.tpl'
         modal_id='report-comment-post-error' modal_title={l s='Your report cannot be sent' d='Shop.CreathemeModules'}}
