<div class="photo-album">
    {foreach from=$images item=image}
        {assign var="class" value=" not-first"}
        {if ($image@iteration - 1) % 3 == 0}
            {assign var="class" value=" first"}
        {/if}
        <div class="photo-album-img{$class}">            
            <img src="{$image.url}" />
        </div>
    {/foreach}
</div>
<div class="photo-album-subtitle"><p>{$title}</p></div>