<div class="photo-album" style="width: 100%">
    {foreach from=$images item=image}
        {if ($image@iteration - 1) == 0}
            <div class="photo-album-img" style="float: left; width: 100%">
                <img width="100%" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 1}
            <div class="photo-album-img" style="width: 49%; clear: both;">
                <img width="100%" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 2}
            <div class="photo-album-img not-first" style="margin-left: 2%; float: left; width: 49%">
                <img width="100%" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 3}
            <div class="photo-album-img" style="width: 32%; clear: both">
                <img width="100%" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 4}
            <div class="photo-album-img not-first" style="margin-left: 2%; width: 32%;">
                <img width="100%" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {elseif ($image@iteration -1) == 5}
            <div class="photo-album-img not-first" style="margin-left: 2%; width: 32%;">
                <img width="100%" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
            </div>
        {/if}
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>