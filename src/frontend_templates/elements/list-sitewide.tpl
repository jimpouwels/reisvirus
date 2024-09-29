{foreach from=$items item=item}
    <span>{$item}{if $item@iteration == count($items) - 1} | {/if}</span>
{/foreach}