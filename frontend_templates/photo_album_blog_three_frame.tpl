<div class="photo-album three-frame">
    {foreach from=$images item=image}
        <div class="photo-album-img">
            <img src="{$image.url}" title="{$image.title}" alt-text="{$image.alt_text}" />
        </div>
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>