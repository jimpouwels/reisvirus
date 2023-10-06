{assign var="itemsPerRow" value=$var.items_per_row}

{assign var="divClass" value="blogpost"}
{if $itemsPerRow == 2}
    {assign var=divClass value="{$divClass} blogpost-two-by-two"}
{/if}

<div class="blogposts">
    {if $title}
        <h2>{$title}</h2>
    {/if}
    {foreach from=$articles item=article name=article}
        <div class="{$divClass} {if ($smarty.foreach.article.index % $itemsPerRow) != 0}not-{/if}first">
            <a href="{$article.url}"><img loading="lazy" src="{$article.image.url}" alt="{$article.image.alt_text}"
                                          title="{$article.image.title}" width="100%"/></a>
            <p class="title"><a href="{$article.url}" title="Blog {$article.title}">{$article.title}</a></p>
            <p class="description">{$article.description}<p>
        </div>
    {/foreach}
</div>