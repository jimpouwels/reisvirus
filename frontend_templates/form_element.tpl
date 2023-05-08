
<div class="contact-form-container">
    {if $webform.is_submitted}
        <p class="paragraph-justified">Bedankt voor uw bericht, u ontvang zo spoedig mogelijk een reactie.</p>
    {else}
        {foreach from=$webform.fields item=field}
            <div class="contact-form-field">
                {$field}
            </div>
        {/foreach}
    {/if}
</div>