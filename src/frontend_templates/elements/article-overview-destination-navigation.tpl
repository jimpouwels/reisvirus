<div class="destination-title destination-entry">{$title}</div>
{foreach from=$articles item=article name=article}
    <div class="destination destination-entry"><a href="{$article.url}" title="Blog {$article.title}">{$article.title}</a></div>
{/foreach}