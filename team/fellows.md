---
layout: page
title: Our fellows
permalink: /team/fellows/
---

Code makes the world go around and our engineers are the ones who do the magic. Note that LSF offers short term fellowships for engineers and as such everyone has the same job title of Software Engineering Fellow.

<table>
    {% for engineer in site.data.fellows %}
        {% assign person = engineer[1] %}
        <tr>
            <td width="20%" style="vertical-align: top;">
                <img src="{{ site.baseurl }}/{{ person.image }} " width="100%">
            </td>
            <td>
                <p>
                    Name: <b>{{ person.name }}</b><br>
                    Role: <b>{{ person.position }}</b><br>
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
