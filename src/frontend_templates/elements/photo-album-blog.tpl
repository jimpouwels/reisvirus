{assign var="class" value=$var.force_class}

{if empty($class)}
    {if count($images) == 6 || count($images) == 3}
        {assign var=class value="six-frame"}
    {elseif count($images) == 4}
        {assign var=class value="four-frame"}
    {elseif count($images) == 2}
        {assign var=class value="two-frame"}
    {elseif count($images) == 5}
        {assign var=class value="five-frame"}
    {/if}
{/if}
<div class="photo-album {$class}">
    {foreach from=$images item=image}
        <div class="photo-album-img photo-album-img-wrapper-full">
            <img class="photo-album-img-full" src="{$image.url}" title="{$image.title}" alt="{$image.alt_text}"/>
        </div>
    {/foreach}
</div>
<div class="photo-album-clear"></div>