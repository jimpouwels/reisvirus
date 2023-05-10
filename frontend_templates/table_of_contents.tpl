{if $title}<p class="subtitle">{$title}</p>{/if}
<ul>
    {foreach from=$items item=item}
        <li><a href="#{$item.reference}" title="{$item.title}">{$item.title}</a></li>
    {/foreach}
</ul>