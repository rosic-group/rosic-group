---
title: "News"
layout: textlay
excerpt: "Rosic Group at University of Oxford."
sitemap: false
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
{{ article.date }}
{{ article.headline | markdownify}}
<br/>

{% endfor %}