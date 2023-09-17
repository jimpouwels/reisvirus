{assign var=heading value=$var.heading}
{if $title}
    <{$heading}>{$title}</{$heading}>
{/if}
<p class="{$var.text_class}">{$text}</p>