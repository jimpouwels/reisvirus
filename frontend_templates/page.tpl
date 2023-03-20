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
                            <li {if $root_page.is_current_page}class="selected"{/if}><a href="{$root_page.url}"><strong>{$root_page.title}</strong></a></li>
                            {foreach from=$root_page.children item=navigation_item}
                                {if $navigation_item.show_in_navigation}
                                    <li {if $navigation_item.is_current_page}class="selected"{/if}><a href="{$navigation_item.url}"><strong>{$navigation_item.title}</strong></a></li>
                                {/if}
                            {/foreach}
                        </ul>
                    </div>
                </div>
            </div>
            <div id="banner-wrapper">
                <div id="banner">
                    <div class="jarallax" data-jarallax data-video-src="https://www.youtube.com/watch?v=_5MuWHILuTg">
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
                <p>&copy; J&Q Travel {$smarty.now|date_format:"%Y"}</p>
            </div>
		</div>
	</body>
</html>
