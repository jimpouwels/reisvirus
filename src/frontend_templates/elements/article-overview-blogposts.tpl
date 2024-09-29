{assign var=divClass value=""}
<div class="blogposts">
    {if $title}
        <h2>{$title}</h2>
    {/if}
    <div class="blogposts-wrapper">
        {foreach from=$articles item=article name=article}
            <div class="blogpost">
                <a href="{$article.url}">
                    <img src="{$article.image.url}" alt="{$article.image.alt_text}" title="{$article.image.title}" width="100%" />
                </a>
                <header class="blogpost-header">
                    {if !empty($article.terms)}
                        <ul class="blogpost-term-list">
                            {foreach from=$article.terms item=$term}
                                {if strpos($term, "no-render") === false}
                                    <li class="blogpost-term">{$term}</li>
                                {/if}
                            {/foreach}
                        </ul>
                    {/if}
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