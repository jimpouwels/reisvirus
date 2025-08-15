<div class="right-block-wrapper right-block-zelf-regelen"">
    <div class="right-block">
        <h3>{$title} {$article.parent_article.description}</h3>
        {foreach from=$element_groups item=element_group}
            {foreach from=$element_group item=element}
                {$element.to_string}
            {/foreach}
        {/foreach}
    </div>
</div>