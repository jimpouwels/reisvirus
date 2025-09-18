<div id="mobile-navigation">
    <div id="mobile-navigation-close-button">
        <svg id="mobile-navigation-close-link" class="close-image" fill="currentColor" width="24" height="24" viewBox="0 0 24 24"><path d="M5.293 6.707l5.293 5.293-5.293 5.293c-0.391 0.391-0.391 1.024 0 1.414s1.024 0.391 1.414 0l5.293-5.293 5.293 5.293c0.391 0.391 1.024 0.391 1.414 0s0.391-1.024 0-1.414l-5.293-5.293 5.293-5.293c0.391-0.391 0.391-1.024 0-1.414s-1.024-0.391-1.414 0l-5.293 5.293-5.293-5.293c-0.391-0.391-1.024-0.391-1.414 0s-0.391 1.024 0 1.414z"></path></svg>
    </div>
    <div id="mobile-navigation-logo">
        <a class="logo" href="{$root_page.url}">
            <img src="/static/img/logo-reisvirus.png" class="logo-img" alt="Reisvirus" />
        </a>
    </div>
    <ul id="mobile-nav">
        {foreach from=$root_page.children item=navigation_item}
            {if $navigation_item.show_in_navigation}
                <li>
                    {if $navigation_item.id == 35}
                        <a id="mobile-destinations-link">{$navigation_item.navigation_title}</a>
                        <img id="mobile-destinations-button" src="/static/img/down_arrow.png" />
                        <div id="mobile-destinations-wrapper">
                            {$blocks.destinations[0].to_string}
                        </div>
                    {else}
                        <a {if $navigation_item.is_current_page}class="selected"{/if}
                           href="{$navigation_item.url}">{$navigation_item.navigation_title}</a>
                    {/if}
                </li>
            {/if}
        {/foreach}
    </ul>
    <div id="mobile-navigation-social-media">
        <a title="Instagram - reis_virus" target="_blank"
           href="https://www.instagram.com/reis_virus"><img src="/static/img/instagram.png"/></a>
        <a title="Facebook - Reisvirus" target="_blank"
           href="https://www.facebook.com/profile.php?id=61565760935259"><img src="/static/img/facebook.png"/></a>
        <a href="https://nl.pinterest.com/Reisvirus" title="Pinterest - Reisvirus" target="_blank"><img
                    class="last" src="/static/img/pinterest.png"/></a>
    </div>
</div>