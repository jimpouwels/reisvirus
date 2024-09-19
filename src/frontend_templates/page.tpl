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
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }

        if (localStorage.getItem('consentMode') === null) {
            gtag('consent', 'default', {
                'ad_storage': 'denied',
                'ad_user_data': 'denied',
                'ad_personalization': 'denied',
                'analytics_storage': 'denied',
                'personalization_storage': 'denied',
                'functionality_storage': 'denied',
                'security_storage': 'denied'
            } );
        } else {
            gtag('consent', 'default', JSON.parse(localStorage.getItem('consentMode')));
        }
    </script>

    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-E6FJ51WTVQ"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-E6FJ51WTVQ', { 'anonymize_ip': true });
    </script>

    <title>{if $page.is_homepage}Reisvirus • Jouw droomreis begint hier!{/if}{if !$page.is_homepage}{$title}{/if}</title>
    <meta name="keywords"
          content="{if $keywords}{$keywords}, {/if}{$title}, Reisvirus, reizen, travel, rondreis, zelf organiseren"/>
    <meta name="description" content="{$page.description}"/>
    <meta name="Subject" content="Reisvirus: {$title}"/>
    <meta name="robots" content="index, follow"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta property="og:locale" content="nl_NL" />
    <meta property="og:site_name" content="Reisvirus">
    <meta property="og:image" content="{$base_url}{if $article}{$article.wallpaper.url}{else}{$blocks.wallpaper[0].element_groups[0][0].image_url}{/if}" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="shortcut icon" type="image/x-icon" href="/static/img/favicon.ico">
    <link rel="canonical" href="{$canonical_url}"/>
    <link rel="stylesheet" href="/static/css/styles.css?v=483">
    {if !$is_mobile_device}
        <link rel="stylesheet" href="/static/css/styles_desktop.css?v=33">
    {else}
        <link rel="stylesheet" href="/static/css/styles_mobile.css?v=35">
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
    <script src="/static/js/functions.js?v=133" type="text/javascript"></script>
    <script src="/static/js/menu_scripts.js?v=96" type="text/javascript"></script>
    <!-- Google tag (gtag.js) -->

</head>
<body>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TLQ29JR7"
                      height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <div id="cookie-consent-banner" class="cookie-consent-banner">
        <div id="cookie-consent-banner-content">
            <h3 style="margin: 0;">Cookie voorkeuren</h3>
            <p>Reisvirus.com maakt gebruik van cookies voor een betere gebruikerservaring.</p>
            <div class="cookie-consent-options" id="cookie-consent-preferences">
                <div class="cookie-consent-option-block">
                    <span>Functioneel</span>
                    <label><input id="consent-necessary" type="checkbox" value="Necessary" checked disabled></label>
                    <div class="cookie-option-text">De technische opslag of toegang is strikt noodzakelijk voor het legitieme doel het gebruik mogelijk te maken van een specifieke dienst waarom de abonnee of gebruiker uitdrukkelijk heeft gevraagd, of met als enig doel de uitvoering van de transmissie van een communicatie over een elektronisch communicatienetwerk.</div>
                </div>
                <div class="cookie-consent-option-block">
                    <span>Statistieken</span>
                    <label><input id="consent-analytics" type="checkbox" value="Analytics" checked></label>
                    <div class="cookie-option-text">De technische opslag of toegang die uitsluitend wordt gebruikt voor anonieme statistische doeleinden. Zonder dagvaarding, vrijwillige naleving door je Internet Service Provider, of aanvullende gegevens van een derde partij, kan informatie die alleen voor dit doel wordt opgeslagen of opgehaald gewoonlijk niet worden gebruikt om je te identificeren.</div>
                </div>
                <div class="cookie-consent-option-block">
                    <span>Marketing</span>
                    <label><input id="consent-marketing" type="checkbox" value="Marketing"></label>
                    <div class="cookie-option-text">De technische opslag of toegang is nodig om gebruikersprofielen op te stellen voor het verzenden van reclame, of om de gebruiker op een site of over verschillende sites te volgen voor soortgelijke marketingdoeleinden.</div>
                </div>
            </div>
            <div class="consent-buttons">
                <button id="btn-accept" class="consent-button-not-last cookie-consent-button">Accepteer alle</button>
                <button id="btn-preferences" class="consent-button-not-last cookie-consent-button cookie-consent-button-gray">Voorkeuren</button>
                <button id="btn-accept-preferences" style="display: none" class="consent-button-not-last cookie-consent-button cookie-consent-button-gray">Voorkeuren opslaan</button>
                <button id="btn-reject-all" class="cookie-consent-button cookie-consent-button-reject cookie-consent-button-gray">Weigeren</button>
            </div>
        </div>
    </div>
    <script>
        function hideBanner() {
            document.getElementById('cookie-consent-banner').style.display = 'none';
        }

        if (localStorage.getItem('consentMode') === null) {
            document.getElementById('btn-accept').addEventListener('click', function() {
                setConsent( {
                    necessary: true,
                    analytics: true,
                    marketing: true
                } );
                hideBanner();
            });
            document.getElementById('btn-accept-preferences').addEventListener('click', function() {
                setConsent( {
                    necessary: true,
                    analytics: document.getElementById('consent-analytics').checked,
                    marketing: document.getElementById('consent-marketing').checked
                } );
                hideBanner();
            });
            document.getElementById('btn-preferences').addEventListener('click', function() {
                document.getElementById('btn-preferences').style.display = 'none';
                document.getElementById('btn-accept-preferences').style.display = 'block';
                document.getElementById('cookie-consent-preferences').style.display = 'block';
            });
            document.getElementById('btn-reject-all').addEventListener('click', function() {
                setConsent( {
                    necessary: false,
                    analytics: false,
                    marketing: false
                } );
                hideBanner();
            });
            document.getElementById('cookie-consent-banner').style.display = 'flex';
        } else {
            hideBanner();
        }

        function setConsent(consent) {
            const consentMode = {
                'functionality_storage': consent.necessary ? 'granted' : 'denied',
                'security_storage': consent.necessary ? 'granted' : 'denied',
                'analytics_storage': consent.analytics ? 'granted' : 'denied',
                'ad_storage': consent.marketing ? 'granted' : 'denied',
                'ad_personalization': consent.marketing ? 'granted' : 'denied',
                'ad_user_data': consent.marketing ? 'granted' : 'denied',
            };
            gtag('consent', 'update', consentMode);
            localStorage.setItem('consentMode', JSON.stringify(consentMode));
        }
    </script>

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
            {assign var=upTo value=2}
            {if $noBannerPage}
                {assign var=upTo value=1}
            {/if}
            {for $i=1 to $upTo}
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
        {assign var="oddEven" value="odd"}
        {foreach from=$page.element_groups item=element_group}
            {if $oddEven == 'even'}
                {assign var=oddEven value="odd"}
            {else}
                {assign var=oddEven value="even"}
            {/if}
            <div class="content-top-{$oddEven}">
                <div class="content-wrapper content-wrapper">
                    {if $noBannerPage}
                        <div id="title"><h1>{$title}</h1></div>
                    {/if}
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
                                    {$blocks.rechts[0].to_string}
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
                        <a title="Instagram - reis_virus" target="_blank"
                           href="https://www.instagram.com/reis_virus"><img src="/static/img/instagram.png"/></a>
                        <a title="Facebook - Reisvirus" target="_blank"
                           href="https://www.facebook.com/profile.php?id=61565760935259"><img src="/static/img/facebook.png"/></a>
                        <a href="https://landenverzamelaars.nl/reiziger/18710/reis-virus"
                           title="LandenVerzamelaars - Reisvirus" target="_blank"><img class=""
                                                                                       src="/static/img/landenverzamelaars.png"/></a>
                        <a href="https://nl.pinterest.com/Reisvirus" title="Pinterest - Reisvirus" target="_blank"><img
                                    class="last" src="/static/img/pinterest.png"/></a>
                    </div>
                </div>
                <div id="sitewide-pages">
                    {$blocks.sitewide[0].to_string}
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
