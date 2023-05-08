<label for="{$name}">{$label}{if $mandatory}<span class="mandatory-star">*</span>{/if}</label>
<input class="{if $has_error}error-field{/if}" type="text" name="{$name}" />