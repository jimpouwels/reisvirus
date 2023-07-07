{assign var="containerWidth" value=100}
{assign var="imgWidth" value=0}
{if count($images) == 1}
    {assign var="imgWidth" value=50}
    {assign var="containerWidth" value=900}
{elseif count($images) == 2}
    {assign var="imgWidth" value=49}
{elseif count($images) == 3}
    {assign var="imgWidth" value=32}
{/if}
<div class="photo-album" style="width: 100%">
    {foreach from=$images item=image name=image}
        {assign var="style" value=""}
        {if $smarty.foreach.image.first}
            {assign var="style" value="float: left"}
        {else}
            {assign var="style" value="margin-left: 2%; float: left"}
        {/if}
        <div class="photo-album-img" style="width: {$imgWidth}%; {$style}">
            <img loading="lazy" width="100%" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
        </div>
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>