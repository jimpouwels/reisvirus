{assign var=heading value=$var.heading}
{if $title}
    <{$heading}>{$title}</{$heading}>
{/if}
{assign var=classes value=""}
{if $var.is_bold == 'true'}
    {assign var=classes value=" article-intro"}
{/if}
<p class="{$var.text_class}{$classes}">{$text}</p>