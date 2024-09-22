{assign var=landTipsFound value=false}
{foreach from=$element_groups item=element_group}
    {foreach from=$element_group item=element}
        {$element.to_string}
    {/foreach}
{/foreach}
{if $comments}
    <div id="article-comments">
        {foreach from=$comments item=comment}
            <div class="blog-item-comment">
                <span class="name">{$comment.name}</span>
                <span class="timestamp">{$comment.created_at}</span>
                <p>{$comment.message}</p>
                <a href="#" onclick="respondToComment({$comment.id}, '{$comment.name}'); return false;">Reageer</a>
            </div>
            {foreach from=$comment.children item=child}
                <div class="blog-item-comment blog-item-comment-child">
                    <span class="name">{$child.name}</span>
                    <span class="timestamp">{$child.created_at}</span>
                    <p>{$child.message}</p>
                </div>
            {/foreach}
        {/foreach}
        <div id="article-comment-form">
            <div id="respond-to-container" style="display: none;">
                <span id="respond-to-name"></span>
                <a href="#" onclick="stopResponding(); return false;" id="stop-respond">Niet meer reageren</a>
            </div>
            {$comment_webform}
        </div>
    </div>
{/if}