---
title: "Rosic Group - Publications"
layout: gridlay
excerpt: "Rosic Group -- Publications."
sitemap: false
permalink: /publications/
---


# Publications

## Group Highlights

### <span style="color:red">**Over 7 best paper award for the group!**</span>

**Jump** to sections for different our research areas:

<!-- - [Multifidelity Modelling](#Multifidelity-Modelling) -->
- [Combustor-Turbine Interaction](#combustor-turbine-interactions)
- [Flexible Turbine Operation](#flexible-turbine-operation)

At the end of this page, you can find the [full list of publications and patents](#full-list-of-publications).

<br/><br/>
### **Flexible Turbine Operation**

See full project summary <a href="{{ site.url }}{{ site.baseurl }}/projects/flexible_ops/">here</a>

{% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 and publi.group == "flex" %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
<div class="well">
<pubtit>{{ publi.title }}</pubtit>
<img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="33%" style="float: left" />
<p>{{ publi.description }}</p>
<p>
<em>
<a href="{{ site.url }}{{ site.baseurl }}/team/">{{ publi.authors }}</a>
</em>
</p>
<p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
<p class="text-danger"><strong>{{ publi.news1 }}</strong></p>
<p>{{ publi.news2 }}</p>
</div>
</div>


{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


<br/><br/>
### **Combustor-Turbine Interactions**

See full project summary <a href="{{ site.url }}{{ site.baseurl }}/projects/cti/">here</a>


{% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight == 1 and publi.group == "cti" %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
<div class="well">
<pubtit>{{ publi.title }}</pubtit>
<img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="img-responsive" width="33%" style="float: left" />
<p>{{ publi.description }}</p>
<p>
<em>
<a href="{{ site.url }}{{ site.baseurl }}/team/">{{ publi.authors }}</a>
</em>
</p>
<p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
<p class="text-danger"><strong>{{ publi.news1 }}</strong></p>
<p>{{ publi.news2 }}</p>
</div>
</div>


{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>

## Full List of Publications

{% assign sorted_publist = site.data.publist | sort: 'year' | reverse %}
{% assign current_year = '' %}

{% for publi in sorted_publist %}
{% if current_year != publi.year %}
{% assign current_year = publi.year %}
### Publications in {{ current_year }}
{% endif %}

{{ publi.title }} <br />
<em>{{ publi.authors }}</em> <br />
<a href="{{ publi.link.url }}">{{ publi.link.display }}</a> <br /><br />
{% endfor %}

## Patents

<!-- <em>Milan P Allan, S Gröblacher, RA Norte, M Leeuwenhoek</em><br />Novel atomic force microscopy probes with phononic crystals<br /> PCT/NL20-20/050797 (2020)

<em>Milan P Allan</em><br /> Methods of manufacturing superconductor and phononic elements <br /> <a href="https://patents.google.com/patent/US10439125B2/en?inventor=Milan+ALLAN&oq=inventor:(Milan+ALLAN)">US10439125B2 (2016)</a> -->

Todo, add patents from BR
