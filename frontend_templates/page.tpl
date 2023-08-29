<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="nl_NL" lang="nl_NL">
	<head>
		<title>JQ-Travel - {$title}</title>
        <meta name="keywords" content="{if $keywords}{$keywords}, {/if}{$title}, JQ-Travel, JQ Travel, reizen, travel, rondreis, zelf organiseren" />
	    <meta name="description" content="{$page.description}" />
	    <meta name="Subject" content="JQ-Travel: {$title}" />
	    <meta name="robots" content="index, follow" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta property="og:site_name" content="JQ-Travel">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="shortcut icon" type="image/x-icon" href="/static/img/favicon.ico">
        <link rel="canonical" href="{$canonical_url}" />
        <link rel="stylesheet" href="/static/css/styles.css?v=418">
        {if !$is_mobile_device}
            <link rel="stylesheet" href="/static/css/styles_desktop.css?v=9">
        {/if}
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <script src="/static/js/jarallax.min.js" type="text/javascript"></script>
        <script src="/static/js/jarallax.video.min.js" type="text/javascript"></script>
        <script src="/static/js/jquery.linkunderanim.min.js?v=11" type="text/javascript"></script>
        <script src="/static/js/functions.js?v=209" type="text/javascript"></script>
        <script src="/static/js/menu_scripts.js?v=4" type="text/javascript"></script>
	</head>
	<body>
		<div id="root-wrapper">
            <div id="header-wrapper">
                <div id="header-content">
                    <div id="header-title">
                        <a class="logo" href="{$root_page.url}">
                            <img src="/static/img/logo-img.png?v=1" class="logo-img" />
                            <span class="logo-txt">JQ-Travel</span>
                        </a>
                    </div>
                    <div id="mobile-menu"><a href="#" onclick="return false;"><img src="/static/img/hamburger_menu.svg" /></a></div>
                    <div id="header-menu">
                        <ul id="nav">
                            <li><a href="{$root_page.url}" {if $root_page.is_current_page}class="selected"{/if}>{$root_page.navigation_title}</a></li>
                            {foreach from=$root_page.children item=navigation_item}
                                {if $navigation_item.show_in_navigation}
                                    <li><a {if $navigation_item.is_current_page}class="selected"{/if} href="{$navigation_item.url}">{$navigation_item.navigation_title}</a></li>
                                {/if}
                            {/foreach}
                        </ul>
                    </div>
                </div>
            </div>
            {if !$is_mobile_device}
                <div id="banner-wrapper">
                    <div id="banner">
                        <div class="jarallax" data-jarallax data-video-src="https://www.youtube.com/watch?v=1EnrTH77Jco">
                            <div id="quote-wrapper">
                                {$page.blocks.quote[0]}
                            </div>
                        </div>
                    </div>
                </div>
                <div id="divider">
                    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                        <path d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z" opacity=".25" class="shape-fill"></path>
                        <path d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z" opacity=".5" class="shape-fill"></path>
                        <path d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z" class="shape-fill"></path>
                    </svg>
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
                    <div id="right-content" class="content right-content-size">
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
                                <a href="https://www.facebook.com/quirine.deloyer" title="Quirine de Loyer" target="_blank"><img class="" src="/static/img/facebook.png" /></a>
                                <a href="https://www.polarsteps.com/QuirinedeLoyer" title="Quirine de Loyer" target="_blank"><img class="last" src="/static/img/polarsteps.png" /></a>
                            </div>
                        </div>
                    </div>
                    <p id="copyright"><a href="mailto:info@jqtravel.nl" title="info@jqtravel.nl">&copy; JQ Travel 2023-{$smarty.now|date_format:"%Y"}</a></p>
                </div>
            </div>
		</div>
	</body>
</html>
