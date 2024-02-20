<div class="destinations">
    <h2>{$title}</h2>
    {foreach from=$articles item=article name=article}
        <div class="destination {if $smarty.foreach.article.index % 3 != 0}not-first{else}first{/if}">
            <p class="title"><a href="{$article.url}" title="Blog {$article.title}">{$article.title}</a></p>
        </div>
    {/foreach}
</div>