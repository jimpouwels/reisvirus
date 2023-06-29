<div class="contact-form-field">
    <label for="{$name}">{$label}{if $mandatory}<span class="mandatory-star">*</span>{/if}</label>
    <textarea class="{if $has_error}error-field{/if}" name="{$name}">{$value}</textarea>
</div>