<div class="contact-form-container">
    {foreach from=$webform.fields item=field}
        <div class="contact-form-field">
            {$field}
        </div>
    {/foreach}
    {if isset($errors.captcha)}
        <p class="form-error">Captcha check is gefaald</p>
    {/if}
</div>