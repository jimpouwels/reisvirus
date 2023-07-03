{assign var="size" value=0}
{assign var="containerWidth" value=1000}
{assign var="imgWidth" value=0}
{if count($images) == 1}
    {assign var="size" value=300}
    {assign var="imgWidth" value=500}
    {assign var="containerWidth" value=500}
{elseif count($images) == 2}
    {assign var="size" value=615}
    {assign var="imgWidth" value=490}
{else}
    {assign var="size" value=930}
    {assign var="imgWidth" value=320}
{/if}
<div class="photo-album" style="width: {$containerWidth}px">
    {foreach from=$images item=image}
        {assign var="class" value=" not-first"}
        {assign var="clear" value=""}
        {if ($image@iteration - 1) % 3 == 0}
            {assign var="class" value=" first"}
            {if ($image@iteration > 0)}
                {assign var="clear" value="clear: both"}
            {/if}
        {/if}
        <div class="photo-album-img{$class}" style="{$clear}">
            <img width="{$imgWidth}px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
        </div>
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>