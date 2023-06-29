<div class="contact-form-field">
    <label for="{$name}">{$label}{if $mandatory}<span class="mandatory-star">*</span>{/if}</label>
    <input class="{if $has_error}error-field{/if}" type="text" value="{$value}" name="{$name}" />
</div>