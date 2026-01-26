---
layout: page
title: Leadership Team
permalink: /team/leadership/
---

The LSF leadership team are the people who manage day to day operations of LSF. 

<table>
    {% for leader in site.data.leadership %}
        {% assign person = leader[1] %}
        <tr>
            <td width="20%" style="vertical-align: top;">
                <img src="{{ site.baseurl }}/{{ person.image }} " width="100%">
            </td>
            <td>
                <p>
                    <b> {{ person.name }} </b><br>
                    Position: <b> {{ person.position }} </b><br>
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
