{assign var=imageFilename value=$var.image_filename}
{assign var=type value=$var.type}

{assign var=val value=""}
{if $type == "organisatie" && $article.parent_article.zelf_regelen_organisatie.value != ""}
    {assign var=val value=$article.parent_article.zelf_regelen_organisatie.value}
{elseif $type == "vlucht" && $article.parent_article.zelf_regelen_vliegticket.value != ""}
    {assign var=val value=$article.parent_article.zelf_regelen_vliegticket.value}
{elseif $type == "auto" && $article.parent_article.zelf_regelen_autohuur.dedicated_value != "no-render"}
    {assign var=val value=$article.parent_article.zelf_regelen_autohuur.value}
{elseif $type == "accommodatie"}
    {assign var=val value="https://booking.tp.st/HyqfZGlb"}
{elseif $type == "ferry" && $article.parent_article.zelf_regelen_ferry.value != ""}
    {assign var=val value=$article.parent_article.zelf_regelen_ferry.value}
{/if}

{if $val}
<div class="zelf-regelen-wrapper">
    <div class="zelf-regelen-icon">
        <img src="/static/img/{$imageFilename}" />
    </div>
    <div class="zelf-regelen-value">
        <p>
            <a title="{$text}" target="_blank" href="{$val}" class="external">{$text}</a>
        </p>
    </div>
</div>
{/if}