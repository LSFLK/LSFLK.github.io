---
layout: page
permalink: /team/directors/
---
# Board of Directors

The Board of Directors are legally responsible for all aspects of the company.

<table>
    {% for director in site.data.directors %}
        {% assign person = director[1] %}
        <tr>
            <td width="20%" style="vertical-align: top;">
                <img src="{{ site.baseurl }}/{{ person.image }} " width="100%">
            </td>
            <td>
                <p>
                    Name: <b> {{ person.name }} </b><br>
                    Start Date: <b>{{ person.start_date }}</b><br>
                    {{ person.shortbio | markdownify }}
                    More: 
                    <a href="{{ person.moreinfo }}"> {{ person.moreinfo}} </a>
                </p>                
            </td>
        </tr>
    {% endfor %}
</table>
