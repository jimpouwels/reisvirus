- based on obcato cms
- src/frontend_templates contains templates for data elements in that cms:
    - element holders:
        - pages (pages of the website, mostly visible in navigation menu)
        - articles (blog items or articles. these articles are displayed on a page)
        - blocks (this can be any chunk of UI in the website. For example, a block on the right side next to the page content, or the header.)
    - elements
        - text-element/paragraph-element
        - image element
        - article overview element (shows list of elements)
        - table of contents element
        - iframe element
        - list element
        - photo album element

These components are hierchically loaded by the cms and all the smarty references (starting with $), are loaded in the obcato cms.

The css (/styles) and scrips (/scripts) are also templates, but rendered differently. It's not part of the cms data, and therefore loaded as an include from another template. This also holds for /partials.