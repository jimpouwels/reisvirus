{assign var=heading value=$var.heading}
{assign var=titleClass value=$var.title_class}
{if $title}
    <{$heading} class="{$titleClass}">{$title}</{$heading}>
{/if}
{assign var=classes value=""}
{if $var.is_bold == 'true'}
    {assign var=classes value=" article-intro"}
{/if}
<p class="paragraph {$var.text_class}{$classes}">{$text}</p>