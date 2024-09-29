{if $title}
    <h2>{$title}</h2>
{/if}
<ul>
    {foreach from=$items item=item}
        <li><span>{$item}</span></li>
    {/foreach}
</ul>