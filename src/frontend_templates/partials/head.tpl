<include template="partials/google-cookie-consent-setdefault-script.tpl" />
{if !$is_preview}
    <include template="partials/google-tag-manager-include.tpl" />
{/if}
<include template="partials/travelpayouts.tpl" />

<title>{if $page.is_homepage}Reisvirus • Jouw droomreis begint hier!{else}{if $article}{if $article.title}{$article.title}{else}{$article.title}{/if}{else}{$page.title}{/if}{/if}</title>
<meta name="keywords"
      content="{if $keywords}{$keywords}, {/if}{$page.title}, Reisvirus, reizen, travel, rondreis, zelf organiseren" />
<meta name="description" content="{$meta_description}" />
<meta name="Subject" content="{$page.title}" />
<meta name="robots" content="index, follow" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, interactive-widget=resizes-content" />
<meta property="og:locale" content="nl_NL" />
<meta property="og:site_name" content="Reisvirus" />
<meta property="og:image" content="{$base_url}{if $article}{$article.wallpaper.url}{else}{$blocks.wallpaper[0].element_groups[0][0].image_url}{/if}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="tradetracker-site-verification" content="012df7a375cb835c935ba183196c09bcc5e6cbdf" />

<link rel="apple-touch-icon" sizes="180x180" href="/static/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/static/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/static/img/favicon/favicon-16x16.png">
<link rel="manifest" href="/static/img/favicon/site.webmanifest">

<link rel="canonical" href="{$canonical_url}"/>
<style>
    <include template="styles/styles.css" />
    <include template="styles/styles_1300.css" />
    <include template="styles/styles_1000.css" />
    <include template="styles/styles_768.css" />
</style>
{if !$is_mobile_device}
    <style>
        <include template="styles/styles_desktop.css" />
    </style>
{else}
    <style>
        <include template="styles/styles_mobile.css" />
    </style>
{/if}
{if $page.is_homepage}
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "WebSite",
            "name": "Reisvirus",
            "url" : "https://www.reisvirus.com/"
        }
    </script>
{/if}

<script type="text/javascript">
    <include template="scripts/jquery.js" />
</script>
<script type="text/javascript">
    <include template="scripts/functions.js" />
</script>
<script type="text/javascript">
    <include template="scripts/mobile_menu.js" />
</script>