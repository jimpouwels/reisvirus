{assign var=itemsPerRow value=$var.items_per_row}
{assign var=divClass value=""}
{if $itemsPerRow == "3"}
    {assign var=divClass value=" row-of-three"}
{/if}
<div class="blogposts">
    {if $title}
        <h2>{$title}</h2>
    {/if}
    <div class="blogposts-wrapper">
        {foreach from=$articles item=article name=article}
            <div class="blogpost{$divClass} {if ($smarty.foreach.article.index % $itemsPerRow) != 0}not-{/if}first">
                <a href="{$article.url}">
                    <img src="{$article.image.url}" alt="{$article.image.alt_text}" title="{$article.image.title}" width="100%" />
                </a>
                <header class="blogpost-header">
                    <h3>
                        <a href="{$article.url}" target="_self">{$article.description}</a>
                    </h3>
                </header>
                <div class="entry-content clear">
                </div>
            </div>
        {/foreach}
        {if empty($articles)}
            <i>Deze blogs moeten wij nog schrijven!</i>
        {/if}
    </div>
</div>