<div class="table-of-contents">
    {if $title}<h3>{$title}</h3><span class="toc-title">{$title}<img class="toc-image" src="/static/img/down_arrow.png" /></span>{/if}
    <ul>
        {foreach from=$items item=item}
            <li><span><a href="#{$item.reference}" title="{$item.title}">{$item.title}</a></span></li>
        {/foreach}
    </ul>
</div>