---
title: "Rosic Group - Team"
layout: gridlay
excerpt: "Rosic Group: Team members"
sitemap: false
permalink: /team/
---

<style>

.button {
    clear: left;
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 4px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.black {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

</style>

# Group Members

 **We are  looking for new PhD students, Postdocs, and Master students to join the team** [(see openings)]({{ site.url }}{{ site.baseurl }}/vacancies)


Jump to [Staff](#staff), [Master students](#master-students), [Alumni](#alumni).

## Staff

{% for member in site.data.team_members %}

<div class="row">

<div class="col-sm-12 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="15%" style="float: left" />
  
  <div style='margin-left:20%;'>
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}<br> <!--<br>email: <{{ member.email }}></i> -->
  Email: <a href="mailto:{{ member.email }}"><i>{{ member.email }}</i></a>

  <p style="font-size:.8em">{{ member.short_bio }}</p>
  </div>

  <!-- Clear Floats -->
  {% if member.website or member.linkedin %}
  <p style="clear:both;"></p>
  {% endif %}

  <!-- Website or LinkedIn Button -->

  {% if member.website %}
  <button class="button black" onclick="window.location.href='{{ member.website }}'" type="button">
    {{ member.name }}'s Personal Website
  </button>
  {% else %}
  {% if member.linkedin %}
  <button class="button black" onclick="window.location.href='{{ member.linkedin }}'" type="button"> {{ member.name }}'s LinkedIn Profile</button>
  {% endif %}
  {% endif %}

</div>

</div>

{% endfor %}

## Master Students
{% assign number_printed = 0 %}
{% for member in site.data.students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} <!-- <br>email: <{{ member.email }}></i> -->
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


## Alumni

{% assign number_printed = 0 %}
{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.duration }} <br> Past Role: {{ member.info }}</i>
  <p style="font-size:0.9em">{{ member.short_bio }}</p>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}
