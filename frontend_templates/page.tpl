<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="nl_NL" lang="nl_NL">
	<head>
		<title>🌴 J&Q Travel - {$page_title}</title>
        <meta name="keywords" content="J&Q Travel, JQ Travel, Jim Pouwels, Quirine de Loyer, Jim, Quirine, reizen, travel, rondreis, zelf organiseren" />
	    <meta name="description" content="{$page.description}" />
	    <meta name="Subject" content="J&Q Travel" />
	    <meta name="robots" content="index,follow" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

        <link rel="stylesheet" href="/static/css/styles.css">        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <script src="/static/js/jarallax.min.js" type="text/javascript"></script>
        <script src="/static/js/jarallax.video.min.js" type="text/javascript"></script>
	</head>
	<body>
		<div id="content-wrapper">
            <div id="header-wrapper">
                <div id="header-content">
                    <div id="header-title">
                        <a href="{$root_page.url}"><img src="/static/img/logo.png" height="55px"></a>
                    </div>
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
            <div id="banner-wrapper">
                <div id="banner">
                    <div class="jarallax" data-jarallax data-video-src="https://www.youtube.com/watch?v=RTqhONnPsR8">
                        <div id="title-wrapper">
                            {$page.blocks.quote[0]}
                        </div>
                    </div>
                </div>
            </div>
            <div id="page-content">
                <div id="title-small">{$page_title}</div>
                {if $article}
                    <p><a href="{$page.url}" title="Terug">&lt; Terug</a></p>
                    {foreach from=$article.elements item=element}
                        {$element}
                    {/foreach}
                {else}
                    {foreach from=$page.elements item=element}
                        {$element}
                    {/foreach}
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
                            <p>J&Q Travel</p>
                            <div class="social-media">
                                <img src="/static/img/instagram.png" />
                            </div>
                        </div>
                        <div class="contact">
                            <p>Quirine de Loyer</p>
                            <div class="social-media">
                                <a href="https://www.instagram.com/quirinedeloyer" title="@qurinedeloyer" target="_blank"><img src="/static/img/instagram.png" /></a>
                                <a href="https://www.facebook.com/quirine.deloyer" title="Quirine de Loyer" target="_blank"><img class="last" src="/static/img/facebook.png" /></a>
                            </div>
                        </div>
                    </div>
                    <p id="copyright"><a href="mailto:info@jqtravel.nl" title="info@jqtravel.nl">&copy; J&Q Travel 2023-{$smarty.now|date_format:"%Y"}</a></p>
                </div>
            </div>
		</div>
	</body>
</html>
