{if $has_captcha_error}
    <p style="color: red;">Er kon niet worden vastgesteld of u een mens of robot bent...</p>
{/if}
{foreach from=$webform.fields item=field}
    {$field}
{/foreach}