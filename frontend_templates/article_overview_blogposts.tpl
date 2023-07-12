<div class="blogposts">
    {foreach from=$articles item=article name=article}
        <div class="blogpost {if $smarty.foreach.article.index % 3 != 0}not-first{else}first{/if}">
            <a href="{$article.url}"><img src="{$article.image.url}" alt-text="{$article.image.alt_text}" title="{$article.image.title}" width="100%" /></a>
            <p class="title"><a href="{$article.url}" title="Blog {$article.title}">{$article.title}</a></p>
            <p class="date">{$article.sort_date}</p>
            <p class="description">{$article.description}<p>
        </div>
    {/foreach}
</div>