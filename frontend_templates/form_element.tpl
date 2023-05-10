
<div class="contact-form-container">
    {foreach from=$webform.fields item=field}
        <div class="contact-form-field">
            {$field}
        </div>
    {/foreach}
</div>