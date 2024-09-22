{assign var=imageFilename value=$var.image_filename}
<div class="country-info-entry-wrapper">
    <div class="country-info-icon">
        <img src="/static/img/{$imageFilename}" width="40" />
    </div>
    <div class="country-info-value">
        <span>{$text}</span>
    </div>
</div>