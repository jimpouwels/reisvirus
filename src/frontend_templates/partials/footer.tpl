<footer id="footer">
    <div id="footer-content">
        <div class="footer-main">
            <div class="footer-column footer-brand">
                <a href="{$root_page.url}" class="footer-logo-link">
                    <img src="/static/img/logo-reisvirus.png" class="footer-logo" alt="Reisvirus" />
                </a>
                <p class="footer-tagline">Dé website die je leert de regie te pakken over jouw reiservaringen</p>
                <p class="footer-description">Wil jij ook een gave reis maken maar weet je niet goed waar te beginnen of hoe je het moet organiseren? Wij vertellen je alles over onze ervaringen zodat ook jij een te gekke reis kunt uitstippelen.</p>
                <div class="social-media">
                    <a title="Instagram - reis_virus" target="_blank" rel="noopener"
                       href="https://www.instagram.com/reis_virus" aria-label="Volg ons op Instagram">
                        <img src="/static/img/instagram.png" alt="Instagram" />
                    </a>
                    <a title="Facebook - Reisvirus" target="_blank" rel="noopener"
                       href="https://www.facebook.com/profile.php?id=61565760935259" aria-label="Volg ons op Facebook">
                        <img src="/static/img/facebook.png" alt="Facebook" />
                    </a>
                    <a href="https://landenverzamelaars.nl/reiziger/18710/reis-virus"
                       title="LandenVerzamelaars - Reisvirus" target="_blank" rel="noopener" aria-label="Volg ons op LandenVerzamelaars">
                        <img src="/static/img/landenverzamelaars.png" alt="LandenVerzamelaars" />
                    </a>
                    <a href="https://nl.pinterest.com/Reisvirus" title="Pinterest - Reisvirus" target="_blank" rel="noopener" aria-label="Volg ons op Pinterest">
                        <img src="/static/img/pinterest.png" alt="Pinterest" />
                    </a>
                </div>
            </div>
            
            <div class="footer-column footer-contact">
                <h4>Contact</h4>
                <a href="mailto:info@reisvirus.com" class="footer-email" title="Stuur ons een email">info@reisvirus.com</a>
            </div>
        </div>
        
        <div class="footer-bottom">
            <div class="footer-bottom-content">
                <nav class="footer-nav" aria-label="Footer navigatie">
                    {foreach from=$sitewide_pages item=sitewide_page}
                        <a title="{$sitewide_page.title}" href="{$sitewide_page.url}">{$sitewide_page.title}</a>
                    {/foreach}
                    <a title="Cookie instellingen" href="javascript:void(0);" class="internal" id="cookie-settings-link">Cookie instellingen</a>
                </nav>
                <p class="copyright">&copy; 2023-{$smarty.now|date_format:"%Y"} Reisvirus. Alle rechten voorbehouden.</p>
                <p class="footer-credits">
                    Powered by <a title="Github: Obcato" target="_blank" rel="noopener"
                                 href="https://github.com/jimpouwels/obcato">Obcato</a>
                    <span class="separator">•</span>
                    Developed by <a href="https://www.linkedin.com/in/jim-pouwels-37923310/?originalSubdomain=nl" title="Jim Pouwels - LinkedIn" target="_blank" rel="noopener">Jim Pouwels</a>
                </p>
                <p class="footer-attributions">Icons by UICONS from flaticon.com</p>
            </div>
        </div>
    </div>
</footer>