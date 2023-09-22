{assign var=heading value=$var.heading}
{if $title}
    <{$heading}>{$title}</{$heading}>
{/if}
{assign var=formattedText value=$text}
{if $var.is_bold == 'true'}
    {assign var=formattedText value="<strong>$formattedText</strong>"}
{/if}
<p class="{$var.text_class}">{$formattedText}</p>