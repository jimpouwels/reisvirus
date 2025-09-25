<div class="img-default-container">
    <picture class="{$var.class}" style="{if $is_mobile_device}clear: both;{elseif $align eq 'center'}display: block; margin-left: auto; margin-right: auto;{/if}{if $align eq 'left'}float: left;{/if} width: {$width}%"">
        <source media="(max-width: 768px)" srcset="{$image_url_mobile}">
        <img src="{$image_url}" alt="{$img_alt_text}" title="{$img_title}" width="100%" />
    </picture>
    {if $align == 'right'}
        <div style="clear: both"></div>
    {/if}
</div>