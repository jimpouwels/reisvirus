<div class="category-selector">
    {foreach from=$items item=item}
        {assign var="parts" value="|"|explode:$item}
        <div class="category-button category-button-{$parts[0]}{if $item@index == 0} category-button-selected{/if}">{$parts[1]}</div>
        <script type="text/javascript">
            $(document).ready(() => {
                $('.category-button-{$parts[0]}').on('click', () => {
                    showCategory('{$parts[0]}');
                });
            })
        </script>
    {/foreach}
</div>