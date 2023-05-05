FormElement: {$title}

Title: {$webform.title}<br />
Fields:<br />
{foreach from=$webform.fields item=field}
{$field}
<br />
{/foreach}