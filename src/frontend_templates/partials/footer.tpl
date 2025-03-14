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
            {foreach from=$sitewide_pages item=sitewide_page}
                <span><a title="{$sitewide_page.title}" href="{$sitewide_page.url}">{$sitewide_page.title}</a></span> |
            {/foreach}
            <span><a title="Cookie instellingen" href="javascript:void(0);" class="internal" id="cookie-settings-link">Cookie instellingen</a></span>
        </div>
        <p id="copyright"><a href="mailto:info@reisvirus.com" title="info@reisvirus.com">&copy; Reisvirus
                2023-{$smarty.now|date_format:"%Y"}</a></p>
        <p id="powered-by">Powered by <a title="Github: Obcato" target="_blank"
                                         href="https://github.com/jimpouwels/obcato">Obcato</a>, implemented by <a href="https://www.linkedin.com/in/jim-pouwels-37923310/?originalSubdomain=nl" title="Jim Pouwels - LinkedIn" target="_blank">Jim Pouwels</a></p>
        <p id="attributions">
            <i>This website contains icons made by UICONS from www.flaticon.com</i>
        </p>
    </div>
</div>