{if count($images) == 6 || count($images) == 3}
    {assign var=class value="six-frame"}
{elseif count($images) == 4}
    {assign var=class value="four-frame"}
{elseif count($images) == 2}
    {assign var=class value="two-frame"}
{/if}
<div class="photo-album {$class}">
    {foreach from=$images item=image}
        <div class="photo-album-img">
            <img src="{$image.url}" title="{$image.title}" alt="{$image.alt_text}" />
        </div>
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>