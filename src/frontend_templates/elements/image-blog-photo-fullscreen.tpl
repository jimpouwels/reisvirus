{assign var=imgClass value=$var.img_class}
{assign var=imgWrapperClass value=$var.img_wrapper_class}

<div class="photo-album" style="width: 100%">
    <div class="photo-album-img {$imgWrapperClass}" style="width: 100%;">
        {$link.open_tag}
            <img width="100%" class="{$imgClass}" src="{$image_url}" title="{$img_title}" alt="{$img_alt_text}" />
        {$link.close_tag}
    </div>
</div>
<div class="photo-album-clear"></div>