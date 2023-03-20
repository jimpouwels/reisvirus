{assign var="size" value=0}
{if count($images) == 1}
    {assign var="size" value=300}
{elseif count($images) == 2}
    {assign var="size" value=615}
{else}
    {assign var="size" value=930}
{/if}
<div class="photo-album" style="width: {$size}px">
    {foreach from=$images item=image}
        {assign var="class" value=" not-first"}
        {if ($image@iteration - 1) % 3 == 0}
            {assign var="class" value=" first"}
        {/if}
        <div class="photo-album-img{$class}">            
            <img src="{$image.url}" />
        </div>
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>