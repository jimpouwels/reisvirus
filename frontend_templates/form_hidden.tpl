<div style="display: none">
    <label for="{$name}">{$label}{if $mandatory}<span class="mandatory-star">*</span>{/if}</label>
    <input id="parent_id_field" class="{if $has_error}error-field{/if}" type="text" value="{$value}" name="{$name}" />
</div>