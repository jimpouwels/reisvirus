<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="nl_NL" lang="nl_NL">
	<head>
		<title>JQ-Travel - {$title}</title>
        <meta name="keywords" content="{if $keywords}{$keywords}, {/if}{$title}, JQ-Travel, JQ Travel, reizen, travel, rondreis, zelf organiseren" />
	    <meta name="description" content="{$page.description}" />
	    <meta name="Subject" content="JQ-Travel: {$title}" />
	    <meta name="robots" content="index, follow" />
        <meta name="viewport" content="width=device-width, initial-scale=0.35, maximum-scale=0.35" />
        <meta property="og:site_name" content="JQ-Travel">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="canonical" href="{$canonical_url}" />
        <link rel="stylesheet" href="/static/css/styles.css?v=240">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <script src="/static/js/jarallax.min.js" type="text/javascript"></script>
        <script src="/static/js/functions.js?v=155" type="text/javascript"></script>
        <script src="/static/js/jarallax.video.min.js" type="text/javascript"></script>
        <script src="/static/js/mobile_scripts.js?v=53" type="text/javascript"></script>
	</head>
	<body>
		<div id="root-wrapper">
            <div id="header-wrapper">
                <div id="header-content">
                    <div id="header-title">
                        <a class="logo" href="{$root_page.url}">JQ-Travel</a>
                    </div>
                    <div id="mobile-menu"><a href="#" onclick="return false;"><img src="/static/img/hamburger_menu.svg" /></a></div>
                    <div id="header-menu">
                        <ul>
                            <li {if $root_page.is_current_page}class="selected"{/if}><a href="{$root_page.url}">{$root_page.title}</a></li>
                            {foreach from=$root_page.children item=navigation_item}
                                {if $navigation_item.show_in_navigation}
                                    <li {if $navigation_item.is_current_page}class="selected"{/if}><a href="{$navigation_item.url}">{$navigation_item.title}</a></li>
                                {/if}
                            {/foreach}
                        </ul>
                    </div>
                </div>
            </div>
            {if !$is_mobile_device}
                <div id="banner-wrapper">
                    <div id="banner">
                        <div class="jarallax" data-jarallax data-video-src="https://www.youtube.com/watch?v=RTqhONnPsR8">
                            <div id="title-wrapper">
                                {$page.blocks.quote[0]}
                            </div>
                        </div>
                    </div>
                </div>
            {/if}
            <div id="content-wrapper">
                <div id="page-content" class="content {if $page.is_homepage}homepage{/if}">
                    <div id="title-container">
                        <h1>{$title}</h1>
                    </div>
                    {if count($crumb_path) > 1}
                        <div id="crumb_path">
                            {foreach from=$crumb_path item=crumb_path_item name=crumb_path_item}
                                <span class="crumb_path_item">
                                    <a title="{$crumb_path_item.title}" href="{$crumb_path_item.url}">{$crumb_path_item.title}</a>
                                    <span>/</span>
                                </span>
                            {/foreach}
                            <span class="crumb_path_item" style="color: green">
                                {$title}
                            </span>
                        </div>
                    {/if}
                    {if $article}
                        {$article.to_string}
                    {else}
                        {foreach from=$page.elements item=element}
                            {$element}
                        {/foreach}
                    {/if}
                </div>
                {if !$page.is_homepage}
                    <div id="right-content" class="content">
                        <div class="right-block {if !$article}no_scroll{/if}">
                            {if $article}
                                {$article.elements[0]}
                            {else}
                                {$page.blocks.rechts[0]}
                            {/if}
                        </div>
                    </div>
                {/if}
            </div>
            <div id="footer">
                <div id="footer-content">
                    <div id="contact-panes">
                        <div class="contact">
                            <p>Jim Pouwels</p>
                            <div class="social-media">
                                <a href="https://www.instagram.com/jim_pouwels" title="@jimpouwels" target="_blank"><img src="/static/img/instagram.png" /></a>
                                <a href="https://www.facebook.com/jimpouwels" title="Jim Pouwels" target="_blank"><img src="/static/img/facebook.png" /></a>
                                <a href="https://twitter.com/JimPouwels" title="Jim Pouwels" target="_blank"><img src="/static/img/twitter.png" /></a>
                                <a href="https://www.youtube.com/channel/UCWa7rOdjk3tOg9fwbPLxwpw" title="Jim Pouwels" target="_blank"><img src="/static/img/youtube.png" /></a>
                                <a href="https://nl.linkedin.com/in/jim-pouwels-37923310" title="Jim Pouwels" target="_blank"><img class="last" src="/static/img/linkedin.png" /></a>
                            </div>
                        </div>
                        <div class="contact">
                            <p>JQ-Travel</p>
                            <div class="social-media">
                                <a title="JQ-Travel Instagram" target="_blank" href="https://www.instagram.com/jq_travel/"><img src="/static/img/instagram.png" /></a>
                            </div>
                        </div>
                        <div class="contact">
                            <p>Quirine de Loyer</p>
                            <div class="social-media">
                                <a href="https://www.instagram.com/quirinepouwels" title="@qurinedeloyer" target="_blank"><img src="/static/img/instagram.png" /></a>
                                <a href="https://www.facebook.com/quirine.deloyer" title="Quirine de Loyer" target="_blank"><img class="last" src="/static/img/facebook.png" /></a>
                            </div>
                        </div>
                    </div>
                    <p id="copyright"><a href="mailto:info@jqtravel.nl" title="info@jqtravel.nl">&copy; JQ Travel 2023-{$smarty.now|date_format:"%Y"}</a></p>
                </div>
            </div>
		</div>
	</body>
</html>
