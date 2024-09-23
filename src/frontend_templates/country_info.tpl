{assign var=imageFilename value=$var.image_filename}
{assign var=head value=$var.head}
<div class="country-info-entry-wrapper">
    <div class="country-info-icon">
        <img src="/static/img/{$imageFilename}" />
    </div>
    <div class="country-info-value">
        <p>{$head}</p>
        <p>{$text}</p>
    </div>
</div>