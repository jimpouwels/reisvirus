<include template="partials/google-cookie-consent-setdefault-script.tpl" />
<include template="partials/google-tag-manager-include.tpl" />

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
<link rel="stylesheet" href="/static/css/styles.css?v=573">
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
<script type="text/javascript">
    <include template="scripts/functions.js" />
</script>
<script type="text/javascript">
    <include template="scripts/mobile_menu.js" />
</script>