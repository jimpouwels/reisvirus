<div class="zelf-regelen-list">
    {foreach from=$items item=item}
        {assign var="split" value="|"|explode:$item}
        {assign var="imgSrc" value=$split[0]}
        {assign var="value" value=$split[1]}
        <div class="zelf-regelen-wrapper">
            <div class="zelf-regelen-icon">
                <img src="/static/img/zelf-regelen-{$imgSrc}.png" />
            </div>
            <div class="zelf-regelen-value">
                <p>{$value}</p>
            </div>
        </div>
    {/foreach}
</div>