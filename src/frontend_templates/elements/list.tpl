{assign var=titleTag value=$var.title_tag}
{if $title}
    <{$titleTag}>{$title}</{$titleTag}>
{/if}
<ul>
    {foreach from=$items item=item}
        <li><span>{$item}</span></li>
    {/foreach}
</ul>