{assign var=article value=$articles[0]}
<div class="highlight-blogpost" style="background-image: url('{$article.wallpaper.url}');">
    <div class="highlight-quote-wrapper">
        <div class="highlight-quote-content">
            <div class="highlight-tag">
                Uitgelicht
            </div>
            <div class="highlight-quote">
                {$article.description}
            </div>
            <div class="highlight-subtitle">
                {$title}
            </div>
            <div class="highlight-button">
                <a href="{$article.url}" title="{$article.description}">Lees meer</a>
            </div>
        </div>
    </div>
</div>