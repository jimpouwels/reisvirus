{assign var=classes value=$var.classes}
{assign var=fullScreen value=$var.full_screen_page}
{assign var=fullScreenPage value=false}
{if $fullScreen == 'yes'}
    {assign var=fullScreenPage value=true}
{/if}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="nl_NL" lang="nl_NL">
<head>
    <title>{if $page.is_homepage}Reisvirus • Jouw droomreis begint hier!{/if}{if !$page.is_homepage}{$title}{/if}</title>
    <meta name="keywords"
          content="{if $keywords}{$keywords}, {/if}{$title}, Reisvirus, reizen, travel, rondreis, zelf organiseren"/>
    <meta name="description" content="{$page.description}"/>
    <meta name="Subject" content="Reisvirus: {$title}"/>
    <meta name="robots" content="index, follow"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta property="og:locale" content="nl_NL" />
    <meta property="og:site_name" content="Reisvirus">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="shortcut icon" type="image/x-icon" href="/static/img/favicon.ico">
    <link rel="canonical" href="{$canonical_url}"/>
    <link rel="stylesheet" href="/static/css/styles.css?v=387">
    {if !$is_mobile_device}
        <link rel="stylesheet" href="/static/css/styles_desktop.css?v=33">
    {else}
        <link rel="stylesheet" href="/static/css/styles_mobile.css?v=32">
    {/if}
    <script type="application/ld+json">
        {
            "@context": "https://schema.org/",
            "@type": "Website",
            "name": "Reisvirus"
        }
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="/static/js/jarallax.min.js?v=3" type="text/javascript"></script>
    <script src="/static/js/jquery.linkunderanim.min.js?v=11" type="text/javascript"></script>
    <script src="/static/js/functions.js?v=130" type="text/javascript"></script>
    <script src="/static/js/menu_scripts.js?v=96" type="text/javascript"></script>
</head>
<body>
<div id="root-wrapper" class="{$classes}">
    <div id="mobile-navigation">
        <div id="mobile-navigation-close-button">
            <svg id="mobile-navigation-close-link" class="close-image" fill="currentColor" width="24" height="24" viewBox="0 0 24 24"><path d="M5.293 6.707l5.293 5.293-5.293 5.293c-0.391 0.391-0.391 1.024 0 1.414s1.024 0.391 1.414 0l5.293-5.293 5.293 5.293c0.391 0.391 1.024 0.391 1.414 0s0.391-1.024 0-1.414l-5.293-5.293 5.293-5.293c0.391-0.391 0.391-1.024 0-1.414s-1.024-0.391-1.414 0l-5.293 5.293-5.293-5.293c-0.391-0.391-1.024-0.391-1.414 0s-0.391 1.024 0 1.414z"></path></svg>
        </div>
        <div id="mobile-navigation-logo">
            <a class="logo" href="{$root_page.url}">
                <img src="/static/img/logo-img.png?v=1" class="logo-img"/>
                <span class="logo-txt">Reisvirus</span>
            </a>
        </div>
        <ul id="mobile-nav">
            {foreach from=$root_page.children item=navigation_item}
                {if $navigation_item.show_in_navigation}
                    <li>
                        <a {if $navigation_item.is_current_page}class="selected"{/if}
                           href="{$navigation_item.url}">{$navigation_item.navigation_title}</a>
                    </li>
                {/if}
            {/foreach}
        </ul>
        <div id="mobile-navigation-social-media">
            <a title="Instagram - reisvirus" target="_blank"
               href="https://www.instagram.com/reis_virus"><img src="/static/img/instagram.png"/></a>
            <a href="https://nl.pinterest.com/Reisvirus" title="Pinterest - Reisvirus" target="_blank"><img
                        class="last" src="/static/img/pinterest.png"/></a>
        </div>
    </div>
    <div class="mobile-menu"><a href="#" onclick="return false;"><img
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
                                    <li><a {if $navigation_item.is_current_page}class="selected"{/if}
                                           href="{$navigation_item.url}">{$navigation_item.navigation_title}</a>
                                    </li>
                                {/if}
                            {/foreach}
                        </ul>
                    </div>
                </div>
            </div>
        {/for}
        <div id="banner-wrapper">
            <div id="banner">
                <div class="jarallax">
                    {if $article && $article.wallpaper}
                        <img class="jarallax-img" src="{$article.wallpaper.url}"/>
                    {else}
                        {$page.blocks.wallpaper[0]}
                    {/if}
                    <div id="quote-wrapper">
                        {if $article}
                            <div id="quote">
                                {$article.title}
                            </div>
                        {else}
                            {if $page.is_homepage}
                                {$page.blocks.wallpapertitle[0]}
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
    </div>
    {assign var="oddEven" value="odd"}
    {foreach from=$page.element_groups item=element_group}
        {if $oddEven == 'even'}
            {assign var=oddEven value="odd"}
        {else}
            {assign var=oddEven value="even"}
        {/if}
        <div class="content-top-{$oddEven}">
            <div class="content-wrapper content-wrapper">
                <div class="page-content content {if $fullScreenPage}fullscreen_page{/if}">
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
                        <div class="right-block {if !$article}no_scroll{/if}">
                            {assign var="tocFound" value=false}
                            {if $article}
                                {foreach from=$article.element_groups item=element_group}
                                    {foreach from=$element_group item=element}
                                        {if $element.type == 'table_of_contents_element'}
                                            {assign var="tocFound" value=true}
                                            {$element.to_string}
                                        {/if}
                                    {/foreach}
                                {/foreach}
                            {/if}
                            {if !$tocFound}
                                {$page.blocks.rechts[0]}
                            {/if}
                        </div>
                    </div>
                {/if}
            </div>
        </div>
    {/foreach}
    <div id="footer">
        <div id="footer-content">
            <div id="contact-panes">
                <p>Reisvirus</p>
                <div class="social-media">
                    <a title="Instagram - reisvirus" target="_blank"
                       href="https://www.instagram.com/reis_virus"><img src="/static/img/instagram.png"/></a>
                    <a href="https://landenverzamelaars.nl/reiziger/18710/reis-virus"
                       title="LandenVerzamelaars - Reisvirus" target="_blank"><img class=""
                                                                                   src="/static/img/landenverzamelaars.png"/></a>
                    <a href="https://nl.pinterest.com/Reisvirus" title="Pinterest - Reisvirus" target="_blank"><img
                                class="last" src="/static/img/pinterest.png"/></a>
                </div>
            </div>
            <p id="copyright"><a href="mailto:info@reisvirus.com" title="info@reisvirus.com">&copy; Reisvirus
                    2023-{$smarty.now|date_format:"%Y"}</a></p>
            <p id="powered-by">Powered by <a title="Github: Obcato" target="_blank"
                                             href="https://github.com/jimpouwels/obcato">Obcato</a></p>
        </div>
    </div>
</div>
</body>
</html>
