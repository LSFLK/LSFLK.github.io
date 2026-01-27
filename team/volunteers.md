---
layout: page
title: Our volunteers
permalink: /team/volunteers/
---

Volunteers are key to making it possible for us to build large scale software with small teams. Thank you to those who make it possible to do this!

<table>
    {% for volunteer in site.data.volunteers %}
        {% assign person = volunteer[1] %}
        <tr>
            <td width="20%" style="vertical-align: top;">
                <img src="{{ site.baseurl }}/{{ person.image }} " width="100%">
            </td>
            <td>
                <p>
                    Name: <b>{{ person.name }}</b><br>
                    Start Date: <b>{{ person.start_date }}</b><br>
                    Projects:
                        <b>{% for p in person.projects %}
                            <a href="{{ site.baseurl }}/projects/{{ p }}">{{ p }}</a>
                        {% endfor %}</b>
                    {{ person.shortbio | markdownify }}
                    {% if person.moreinfo != nil %}
                        More: 
                        <a href="{{ person.moreinfo }}"> {{ person.moreinfo}} </a>
                    {% endif %}     
                </p>
            </td>
        </tr>
    {% endfor %}
</table>
