{assign var=imageFilename value=$var.image_filename}
{assign var=type value=$var.type}

{assign var=val value=""}
{assign var=title value=""}

{if $type == "organisatie" && $article.parent_article.zelf_regelen_organisatie.value != ""}
    {assign var=val value=$article.parent_article.zelf_regelen_organisatie.value}
    {assign var=title value="Boek een georganiseerde reis naar"}
{elseif $type == "vlucht" && $article.parent_article.zelf_regelen_vliegticket.value != ""}
    {assign var=val value=$article.parent_article.zelf_regelen_vliegticket.value}
    {assign var=title value="Vind een goedkope vlucht naar"}
{elseif $type == "auto" && $article.parent_article.zelf_regelen_autohuur.dedicated_value != "no-render"}
    {assign var=val value=$article.parent_article.zelf_regelen_autohuur.value}
    {assign var=title value="Huur een auto voor een gunstige prijs"}
{elseif $type == "accommodatie"}
    {assign var=val value="https://booking.tp.st/HyqfZGlb"}
    {assign var=title value="Vind een mooie accommodatie"}
{/if}
{if $val != ""}
    <div class="zelf-regelen-wrapper">
        <div class="zelf-regelen-icon">
            <img src="/static/img/{$imageFilename}" />
        </div>
        <div class="zelf-regelen-value">
            <p><a title="{$title} {$article.parent_article.description}" target="_blank" href="{$val}" class="external">{$title} {$article.parent_article.description}</a></p>
        </div>
    </div>
{/if}