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
{assign var=nrPortrait value=0}
<div class="photo-album {$class}">
    {foreach from=$images item=image}
        {if $image.height > $image.width}
            {assign var=nrPortrait value=$nrPortrait + 1}
        {/if}
        <div class="photo-album-img photo-album-img-wrapper-full{if $image.height > $image.width} photo-album-img-wrapper-full-portrait{/if}">
            <img class="photo-album-img-full{if $nrPortrait == 2} photo-album-img-full-portrait-margin{/if}" src="{$image.url}" title="{$image.title}" alt="{$image.alt_text}"/>
        </div>
    {/foreach}
</div>
<div class="photo-album-clear"></div>