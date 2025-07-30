{assign var=imageFilename value=$var.image_filename}
{assign var=type value=$var.type}
<div class="zelf-regelen-wrapper">
    <div class="zelf-regelen-icon">
        <img src="/static/img/{$imageFilename}" />
    </div>
    <div class="zelf-regelen-value">
        {if $type == "vlucht"}
            <p><a title="Vind goedkope tickets" target="_blank" href="{$article.parent_article.vliegticket_aanbieder_link}" class="external">Vind een goedkope vlucht naar {$article.parent_article.description}</a></p>
        {else}
            <p>{$text}</p>
        {/if}
    </div>
</div>