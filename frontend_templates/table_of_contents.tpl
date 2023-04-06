<ol>
    {foreach from=$items item=item}
        <li><a href="#{$item.reference}" title="{$item.title}">{$item.title}</a></li>
    {/foreach}
</ol>