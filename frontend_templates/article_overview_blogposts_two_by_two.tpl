<div class="blogposts">
    {foreach from=$articles item=article name=article}
        <div class="blogpost blogpost-two-by-two {if $smarty.foreach.article.index % 2 != 0}not-first{/if}">
            <a href="{$article.url}"><img src="{$article.image.url}" alt="{$article.image.alt_text}"
                                          title="{$article.image.title}" width="100%"/></a>
            <p class="title"><a href="{$article.url}" title="Blog {$article.title}">{$article.title}</a></p>
        </div>
    {/foreach}
</div>