<div class="photo-album" style="width: 1000px">
    {foreach from=$images item=image}
        <div class="photo-album-img">
            <img width="1000px" src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
        </div>
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>