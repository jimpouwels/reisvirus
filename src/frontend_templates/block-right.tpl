<h3>{$title}</h3>
{foreach from=$element_groups item=element_group}
    {foreach from=$element_group item=element}
        {$element.to_string}
    {/foreach}
{/foreach}