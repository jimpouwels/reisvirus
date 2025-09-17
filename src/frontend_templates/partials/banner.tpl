<div id="banner-wrapper">
    <div id="banner">
        <div class="jarallax">
            {if $article && $article.wallpaper}
                <img class="jarallax-img" src="{$article.wallpaper.url}" />
            {else}
                {$blocks.wallpaper[0].to_string}
            {/if}
            <div id="quote-wrapper">
                {if $article}
                    {if $article.parent_article}
                        <div id="quote-country">
                            <p id="banner-country-label">{$article.parent_article.title}</p>
                        </div>
                    {/if}
                    {foreach from=$article.terms item=term}
                        {if $term == "Reistip"}
                            <div id="quote-country">
                                <p id="banner-country-label">{$term}</p>
                            </div>
                        {/if}
                    {/foreach}
                    <div id="quote">
                        <h1>{$article.title}</h1>
                    </div>
                {else}
                    {if $page.is_homepage}
                        {$blocks.wallpapertitle[0].to_string}
                    {else}
                        <div id="quote">
                            <h1>{$page.title}</h1>
                        </div>
                    {/if}
                {/if}
            </div>
        </div>
    </div>
</div>