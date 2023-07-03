<div class="blogposts">
    {foreach from=$articles item=article}
        <div class="blogpost">
            <a href="{$article.url}"><img src="{$article.image.url}" alt-text="{$article.image.alt_text}" title="{$article.image.title}" width="300px" height="200px" /></a>
            <p class="title"><a href="{$article.url}" title="Blog {$article.title}">{$article.title}</a></p>
            <p class="date">{$article.sort_date}</p>
            <p class="description">{$article.description}<p>
        </div>
    {/foreach}
</div>