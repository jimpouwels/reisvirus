{assign var=imgClass value=$var.img_class}
{assign var=imgWrapperClass value=$var.img_wrapper_class}

<div class="photo-album" style="width: 100%">
    <div class="photo-album-img {$imgWrapperClass}" style="width: 100%;">
        {$link.open_tag}
        <picture class="{$imgClass}">
            <source media="(max-width: 768px)" srcset="{$image_url}&mobile=true">
            <img width="100%" src="{$image_url}" title="{$img_title}" alt="{$img_alt_text}" />
        </picture>
        {$link.close_tag}
    </div>
</div>
<div class="photo-album-clear"></div>