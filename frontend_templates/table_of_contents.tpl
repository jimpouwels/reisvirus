{if $title}<h2>{$title}</h2>{/if}
<ul class="table-of-contents">
    {foreach from=$items item=item}
        <li><span><a href="#{$item.reference}" title="{$item.title}">{$item.title}</a></span></li>
    {/foreach}
</ul>