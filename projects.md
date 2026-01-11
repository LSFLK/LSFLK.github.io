---
layout: page
title: Projects
permalink: /projects/
---
<table>
    {% assign active_projects = site.projects | where_exp: "project", "project.end_date == null" %}
    {% for project in active_projects %}
        <tr>
            <td width="20%" style="vertical-align: top;">
                <img src="{{ site.baseurl }}/{{ project.image }} " width="100%">
            </td>
            <td>
                <p>
                    Name: <b>{{ project.title }}</b><br>
                    Start Date: <b>{{project.start_date | date_to_string: "ordinal", "US" }}</b><br>
                    {{ project.summary | markdownify }}<br>
                    <a href="{{ site.baseurl }}/projects/{{ project.path | split: "/" | last | replace: ".md", "" }}">Learn more</a>
                </p>            
            </td>
        </tr>
    {% endfor %}
</table>

# Past projects
<table>
    {% assign past_projects = site.projects | where_exp: "project", "project.end_date != null" %}
    {% for project in past_projects %}
        <tr>
            <td width="20%" style="vertical-align: top;">
                <img src="{{ site.baseurl }}/{{ project.image }} " width="100%">
            </td>
            <td>
                <p>
                    Name: <b>{{ project.title }}</b><br>
                    Start Date: <b>{{project.start_date | date_to_string: "ordinal", "US" }}</b><br>
                    End Date: <b>{{project.end_date | date_to_string: "ordinal", "US" }}</b><br>
                    {{ project.summary | markdownify }}<br>
                    <a href="{{ site.baseurl }}/projects/{{ project.path | split: "/" | last | replace: ".md", "" }}">Learn more</a>
                </p>            
            </td>
        </tr>
    {% endfor %}
</table>
