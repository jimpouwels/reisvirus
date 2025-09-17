{assign var=classes value=$var.classes}
{assign var=noBanner value=$var.no_banner}
{assign var=hideTitle value=$var.hide_title}
{assign var=noBannerPage value=false}
{if $noBanner == 'yes'}
    {assign var=noBannerPage value=true}
{/if}
{assign var=hideTitlePage value=false}
{if $hideTitle == 'yes'}
    {assign var=hideTitlePage value=true}
{/if}
{assign var=fullScreen value=$var.full_screen_page}
{assign var=fullScreenPage value=false}
{if $fullScreen == 'yes'}
    {assign var=fullScreenPage value=true}
{/if}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="nl_NL" lang="nl_NL">
<head>
    <!--
        Author: Jim Pouwels
        Powered by: Obcato CMS (https://github.com/jimpouwels/obcato)
    -->
    <include template="partials/head.tpl" />
</head>
<body>
    <include template="partials/google-tag-manager-body-include.tpl" />
    <div id="root-wrapper" class="{$classes}{if $page.is_homepage} homepage{/if}">
        <include template="partials/mobile-navigation.tpl" />
        <div class="mobile-hamburger-menu"><a href="#" onclick="return false;"><img
                        src="/static/img/hamburger_menu.svg"/></a>
        </div>
        <div id="nav-top">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" width="26px" height="16.043px" viewBox="57 35.171 26 16.043" enable-background="new 57 35.171 26 16.043" xml:space="preserve">
                    <path d="M57.5,38.193l12.5,12.5l12.5-12.5l-2.5-2.5l-10,10l-10-10L57.5,38.193z"></path>
                    </svg>
        </div>
        <div id="top-wrapper">
            {for $i=1 to 2}
                <div id="header-wrapper-{$i}">
                    <div class="header-content">
                        <div class="header-title">
                            <a class="logo" href="{$root_page.url}">
                                <img src="/static/img/logo-reisvirus.png?v=1" class="logo-img"/>
                            </a>
                        </div>
                        <nav class="header-menu">
                            <ul id="nav-{$i}" class="nav">
                                {foreach from=$root_page.children item=navigation_item}
                                    {if $navigation_item.show_in_navigation}
                                        <li class="header-menu-item {if $navigation_item.id == 35} header-menu-destinations-link{/if}">
                                            {if $navigation_item.id == 35}
                                                <include template="partials/destinations-list.tpl" />
                                                <a href="{$navigation_item.url}" class="header-menu-link{if $navigation_item.is_current_page} selected"{/if}">{$navigation_item.navigation_title}</a>
                                            {else}
                                                <a class="header-menu-link{if $navigation_item.is_current_page} selected"{/if}"
                                                   href="{$navigation_item.url}">{$navigation_item.navigation_title}</a>
                                            {/if}
                                        </li>
                                    {/if}
                                {/foreach}
                            </ul>
                        </nav>
                        <div class="instagram-link">
                            <a href="https://www.instagram.com/reis_virus" title="Reisvirus - Instagram" target="_blank"><img src="/static/img/instagram-white.png" /></a>
                        </div>
                    </div>
                </div>
            {/for}
            {if !$noBannerPage}
                <include template="partials/banner.tpl" />
            {/if}
        </div>
        {if ($page.is_homepage || $noBannerPage) && !$hideTitlePage}
            <div id="title"><h1>{$page.title}</h1></div>
        {/if}
        {assign var="oddEven" value="odd"}
        {foreach from=$page.element_groups item=element_group}
            {if $oddEven == 'even'}
                {assign var=oddEven value="odd"}
            {else}
                {assign var=oddEven value="even"}
            {/if}
            <div class="content-top-{$oddEven} content-top">
                <div class="content-wrapper content-wrapper{if $fullScreenPage} fullscreen_page{else} page_with_right_block{/if}">
                    <div class="page-content content">
                        {if !$fullScreenPage}
                            {if count($crumb_path) > 1}
                                <div id="crumb_path">
                                    {foreach from=$crumb_path item=crumb_path_item name=crumb_path_item}
                                        <span class="crumb_path_item">
                                            <a title="{$crumb_path_item.title}"
                                               href="{$crumb_path_item.url}">{$crumb_path_item.title}</a>
                                            {if !$smarty.foreach.crumb_path_item.last}
                                                <span>/</span>
                                            {/if}
                                        </span>
                                    {/foreach}
                                </div>
                            {/if}
                        {/if}
                        {if $article}
                            {$article.to_string}
                        {else}
                            {foreach from=$element_group item=element}
                                {$element.to_string}
                            {/foreach}
                        {/if}
                        {if $article}
                            <p class="affeliate-notice">Het kan zijn dat dit artikel affiliate links bevat. Wanneer je via deze links iets boekt zorgt dat ervoor dat wij een kleine commissie ontvangen. Jij maakt hiervoor natuurlijk geen extra kosten! Door op deze manier te boeken help je ons om deze website mogelijk te maken en kunnen we je blijven voorzien van de nieuwste reisinspiratie! Groetjes, Jim en Quirine.</p>
                        {/if}
                        {if $article && $article.comment_webform}
                            <div id="article-comments-wrapper">
                                <div id="article-comments-alignment-wrapper">
                                    <div id="article-comment-form">
                                        <h3>Laat een reactie achter</h3>
                                        <div id="respond-to-container" style="display: none;">
                                            <span id="respond-to-name"></span>
                                            <a href="#" onclick="stopResponding(); return false;" id="stop-respond">Niet meer reageren</a>
                                        </div>
                                        {$article.comment_webform}
                                    </div>
                                    {if count($article.comments) > 0}
                                        <div id="article-comments">
                                            {foreach from=$article.comments item=comment}
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
                                        </div>
                                    {/if}
                                </div>
                            </div>
                        {/if}
                    </div>
                    {if !$fullScreenPage}
                        <div id="right-content" class="content right-content-size">
                            <div id="right-content-sticker">
                                {assign var=tocElement value=''}
                                {if $article}
                                    {foreach from=$article.element_groups item=element_group}
                                        {foreach from=$element_group item=element}
                                            {if $element.type == 'table_of_contents_element'}
                                                {assign var="tocFound" value=true}
                                                {assign var=tocElement value=$element}
                                            {/if}
                                        {/foreach}
                                    {/foreach}
                                {/if}
                                {if $tocElement}
                                    <div class="right-block-wrapper" id="toc-block-wrapper">
                                        <h3>{$tocElement.title}</h3>
                                        <div class="right-block toc-block">
                                            {$tocElement.to_string}
                                        </div>
                                    </div>
                                {/if}
                                {foreach from=$blocks.rechts item=block}
                                    {$block.to_string}
                                {/foreach}
                            </div>
                        </div>
                    {/if}
                </div>
            </div>
        {/foreach}
        {if $page.is_homepage}
            {$blocks.uitgelicht[0].to_string}
        {/if}
        {if isset($blocks.rechts)}
            <div class="bottom-blocks{if !$fullScreenPage} bottom-blocks-narrow{/if} {if $article}bottom-blocks-article{/if}">
                {if isset($blocks.rechts)}
                    {foreach from=$blocks.rechts item=block}
                        {$block.to_string}
                    {/foreach}
                {/if}
            </div>
        {/if}
        {if isset($blocks.onder)}
            <div id="bottom-blocks-wrapper">
                <div class="bottom-blocks-related-articles">
                    {foreach from=$blocks.onder item=block}
                        {$block.to_string}
                    {/foreach}
                    <div style="width: fit-content; margin: auto;">
                        {assign var=allUrl value=""}
                        {assign var=allDescription value=""}
                        {if $article.parent_article}
                            {assign var=allUrl value=$article.parent_article.url}
                            {assign var=allDescription value="Alle reisinspiratie voor `$article.parent_article.description`"}
                        {else}
                            {assign var=allUrl value=$page.parent.url}
                            {assign var=allDescription value="Alle reistips"}
                        {/if}
                        <a class="green-button" href="{$allUrl}" title="{$allDescription}">{$allDescription} &rarr;</a>
                    </div>
                </div>
            </div>
        {/if}
        <include template="partials/footer.tpl" />
    </div>
    <include template="partials/google-cookie-consent-banner.tpl" />
</body>
</html>
