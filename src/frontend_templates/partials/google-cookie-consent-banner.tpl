<div id="cookie-consent-banner" class="cookie-consent-banner">
    <div id="cookie-consent-banner-content">
        <h3 style="margin: 0;">Cookie voorkeuren</h3>
        <p>Reisvirus.com maakt gebruik van cookies voor een betere gebruikerservaring.</p>
        <div class="cookie-consent-options" id="cookie-consent-preferences">
            <div class="cookie-consent-option-block">
                <span>Functioneel</span>
                <label><input id="consent-necessary" type="checkbox" value="Necessary" checked></label>
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

    function showBanner() {
        document.getElementById('cookie-consent-banner').style.display = 'flex';
    }

    document.getElementById('cookie-settings-link').addEventListener('click', function() {
        showBanner();
        return false;
    });

    if (localStorage.getItem('consentMode') === null) {
        console.log('test');
        showBanner();
    }
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