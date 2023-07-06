<div class="photo-album" style="width: 900px">
    {foreach from=$images item=image}
        {if ($image@iteration - 1) == 0}
            <div class="photo-album-img">
                <img loading="lazy" width="900px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 1}
            <div class="photo-album-img" style="clear: both">
                <img loading="lazy" width="280px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 2}
            <div class="photo-album-img not-first">
                <img loading="lazy" width="289px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 3}
            <div class="photo-album-img not-first">
                <img loading="lazy" width="289px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {/if}
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>