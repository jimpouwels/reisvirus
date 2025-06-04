<div class="destination-entry destination-title">{$title}</div>
{foreach from=$articles item=article name=article}
    <div class="destination-entry destination"><a href="{$article.url}" title="Blog {$article.title}">{$article.title}</a></div>
{/foreach}