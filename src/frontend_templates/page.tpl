{assign var=classes value=$var.classes}
{assign var=noBanner value=$var.no_banner}
{assign var=noBannerPage value=false}
{if $noBanner == 'yes'}
    {assign var=noBannerPage value=true}
{/if}
{assign var=fullScreen value=$var.full_screen_page}
{assign var=fullScreenPage value=false}
{if $fullScreen == 'yes'}
    {assign var=fullScreenPage value=true}
{/if}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="nl_NL" lang="nl_NL">
<head>
    <include template="partials/head.tpl" />
</head>
<body>
    <include template="partials/google-tag-manager-body-include.tpl" />
    <div id="root-wrapper" class="{$classes}">
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
                                <img src="/static/img/logo-img.png?v=1" class="logo-img"/>
                                <span class="logo-txt">Reisvirus</span>
                            </a>
                        </div>
                        <div class="header-menu">
                            <ul id="nav-{$i}" class="nav">
                                {foreach from=$root_page.children item=navigation_item}
                                    {if $navigation_item.show_in_navigation}
                                        <li class="{if $navigation_item.id == 35} header-menu-destinations-link{/if}">
                                            {if $navigation_item.id == 35}
                                                <include template="partials/destinations-list.tpl" />
                                                <a href="{$navigation_item.url}" class="header-menu-link">{$navigation_item.navigation_title}</a>
                                            {else}
                                                <a class="header-menu-link{if $navigation_item.is_current_page} selected"{/if}"
                                                   href="{$navigation_item.url}">{$navigation_item.navigation_title}</a>
                                            {/if}
                                        </li>
                                    {/if}
                                {/foreach}
                            </ul>
                        </div>
                    </div>
                </div>
            {/for}
            {if !$noBannerPage}
                <div id="banner-wrapper">
                    <div id="banner">
                        <div class="jarallax">
                            {if $article && $article.wallpaper}
                                <img class="jarallax-img" src="{$article.wallpaper.url}"/>
                            {else}
                                {$blocks.wallpaper[0].to_string}
                            {/if}
                            <div id="quote-wrapper">
                                {if $article}
                                    <div id="quote">
                                        {$article.title}
                                    </div>
                                {else}
                                    {if $page.is_homepage}
                                        {$blocks.wallpapertitle[0].to_string}
                                    {else}
                                        <div id="quote">
                                            {$page.title}
                                        </div>
                                    {/if}
                                {/if}
                            </div>
                        </div>
                    </div>
                </div>
            {/if}
        </div>
        {if $noBannerPage}
            <div id="title"><h1>{$title}</h1></div>
        {/if}
        {assign var="oddEven" value="odd"}
        {foreach from=$page.element_groups item=element_group}
            {if $oddEven == 'even'}
                {assign var=oddEven value="odd"}
            {else}
                {assign var=oddEven value="even"}
            {/if}
            <div class="content-top-{$oddEven} content-top">
                <div class="content-wrapper content-wrapper">
                    <div class="page-content content {if $fullScreenPage}fullscreen_page{else}page_width_right_block{/if}">
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
                        {if $page.is_homepage}
                            <div id="title-container">
                                <h1>{$title}</h1>
                            </div>
                        {/if}
                        {if $article}
                            {$article.to_string}
                        {else}
                            {foreach from=$element_group item=element}
                                {$element.to_string}
                            {/foreach}
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
                                        <div class="right-block {if !$article}no_scroll{/if}">
                                            {$tocElement.to_string}
                                        </div>
                                    </div>
                                {/if}
                                {foreach from=$blocks.rechts item=block}
                                    <div class="right-block-wrapper" style="{if $tocElement || $block@index > 0}margin-top: 40px{/if}">
                                        <div class="right-block {if !$article}no_scroll{/if}">
                                            {$block.to_string}
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
                        </div>
                    {/if}
                </div>
            </div>
        {/foreach}
        <div id="blocks-for-narrow">
            {if isset($blocks.rechts)}
                {foreach from=$blocks.rechts item=block}
                    <div class="right-block-wrapper"">
                        <div class="right-block {if !$article}no_scroll{/if}">
                            {$block.to_string}
                        </div>
                    </div>
                {/foreach}
            {/if}
        </div>
        <include template="partials/footer.tpl" />
    </div>
    <include template="partials/google-cookie-consent-banner.tpl" />
</body>
</html>
