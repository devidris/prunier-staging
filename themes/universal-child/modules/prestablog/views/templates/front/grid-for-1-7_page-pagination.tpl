{* ------------------------------
 * PRESTASHOP THEME UNIVERSAL
 * Copyright (c) Prestacrea
 * ------------------------------ *}

{if isset($Pagination.NombreTotalPages) && $Pagination.NombreTotalPages > 1}
	<div class="prestablog_pagination font-weight-bold text-center my-5">

		{if $Pagination.PageCourante > 1}
			{if $prestablog_categorie_link_rewrite}
		    <a class="previous badge rounded-circle border-0 mr-3 p-2"
					 href="{PrestaBlogUrl categorie=$prestablog_categorie_link_rewrite start=$Pagination.StartPrecedent p=$Pagination.PagePrecedente c=$prestablog_categorie m=$prestablog_month y=$prestablog_year}{$prestablog_search_query}">
					<i class="icon-angle-left text-white" aria-hidden="true"></i>
				</a>
			{else}
			  <a class="previous badge rounded-circle border-0 mr-3 p-2" href="{PrestaBlogUrl}{$prestablog_search_query}">
					<i class="icon-angle-left text-white" aria-hidden="true"></i>
				</a>
      {/if}
		{else}
			<span class="previous disabled badge rounded-circle border-0 mr-3 p-2"><i class="icon-angle-left text-white" aria-hidden="true"></i></span>
		{/if}

		{foreach from=$Pagination.PremieresPages key=key_page item=value_page}
			{if ($Pagination.PageCourante == $key_page) || (!$Pagination.PageCourante && $key_page == 1)}
				<span class="page current bg-transparent mx-2">{$key_page|intval}</span>
			{else}
				{if $key_page == 1}
				{if $prestablog_categorie_link_rewrite}
					<a class="page bg-transparent mx-2"
						 href="{PrestaBlogUrl categorie=$prestablog_categorie_link_rewrite c=$prestablog_categorie m=$prestablog_month y=$prestablog_year}{$prestablog_search_query}{$prestablog_search_query}">{$key_page|intval}</a>
				{else}
				  <a class="page bg-transparent mx-2" href="{PrestaBlogUrl}{$prestablog_search_query}">{$key_page|intval}</a>{/if}
				{else}
					<a class="page bg-transparent mx-2"
						 href="{PrestaBlogUrl categorie=$prestablog_categorie_link_rewrite start=$value_page p=$key_page c=$prestablog_categorie m=$prestablog_month y=$prestablog_year}{$prestablog_search_query}">{$key_page|intval}</a>
				{/if}
			{/if}
		{/foreach}

		{if isset($Pagination.Pages) && $Pagination.Pages}
			<span class="more">...</span>
			{foreach from=$Pagination.Pages key=key_page item=value_page}
				{if !in_array($value_page, $Pagination.PremieresPages)}
					{if ($Pagination.PageCourante == $key_page) || (!$Pagination.PageCourante && $key_page == 1)}
						<span class="page current bg-transparent mx-2">{$key_page|intval}</span>
					{else}
						<a class="page bg-transparent mx-2"
							 href="{PrestaBlogUrl categorie=$prestablog_categorie_link_rewrite start=$value_page p=$key_page c=$prestablog_categorie m=$prestablog_month y=$prestablog_year}{$prestablog_search_query}">{$key_page|intval}</a>
					{/if}
				{/if}
			{/foreach}
		{/if}

		{if $Pagination.PageCourante < $Pagination.NombreTotalPages}
			<a class="next badge rounded-circle border-0 ml-3 p-2"
				 href="{PrestaBlogUrl categorie=$prestablog_categorie_link_rewrite start=$Pagination.StartSuivant p=$Pagination.PageSuivante c=$prestablog_categorie m=$prestablog_month y=$prestablog_year}{$prestablog_search_query}">
				<i class="icon-angle-right text-white" aria-hidden="true"></i>
			</a>
		{else}
			<span class="next disabled badge rounded-circle border-0 ml-3 p-2"><i class="icon-angle-right text-white" aria-hidden="true"></i></span>
		{/if}

	</div>
{/if}
