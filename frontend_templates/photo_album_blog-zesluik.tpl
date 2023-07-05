<div class="photo-album" style="width: 1000px">
    {foreach from=$images item=image}
        {if ($image@iteration - 1) == 0}
            <div class="photo-album-img">
                <img width="1000px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 1}
            <div class="photo-album-img" style="clear: both">
                <img width="490px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 2}
            <div class="photo-album-img not-first">
                <img width="490px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 3}
            <div class="photo-album-img" style="clear: both">
                <img width="320px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 4}
            <div class="photo-album-img not-first">
                <img width="320px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 5}
            <div class="photo-album-img not-first">
                <img width="320px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {/if}
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>