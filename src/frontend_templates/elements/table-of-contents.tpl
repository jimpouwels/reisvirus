<div class="table-of-contents">
    {if $title}<h3>{$title}</h3>{/if}
    <ul>
        {foreach from=$items item=item}
            <li><span><a href="#{$item.reference}" title="{$item.title}">{$item.title}</a></span></li>
        {/foreach}
    </ul>
</div>