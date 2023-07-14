<div class="table-of-contents">
    {if $title}<h2>{$title}</h2>{/if}
    <ul>
        {foreach from=$items item=item}
            <li><span><a href="#{$item.reference}" title="{$item.title}">{$item.title}</a></span></li>
        {/foreach}
    </ul>
</div>