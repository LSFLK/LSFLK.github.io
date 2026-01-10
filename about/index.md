---
layout: page
title: About
permalink: /about/
---

Jump to: <a href="#founding">The founding<a>, <a href="#phase1">Phase 1 (2003-13)</a>, <a href="#phase2">Phase 2 (2013-18)</a>, <a href="#phase3">Phase 3 (2019-24)</a>, <a href="#phase4">Modern era (2025-)</a>.

## The founding {#founding}

The Lanka Software Foundation was conceived by <a href="{{ site.baseurl }}/about#sanjiva">Sanjiva</a> and <a href="{{ site.baseurl }}/about#jivaka">Jivaka</a> in 2001/2. After 16 years in the US, Sanjiva returned to Sri Lanka in 2001. As a long time open source contributor, Sanjiva understood that open source distribution of software was a powerful way to reach the global market. At that time, while everyone was talking about using free and open source software in Sri Lanka, no one was promoting, guiding and supporting the creation of open source software from our side of the world. 

In the early 2000s, Sanjiva was deeply involved in creating the Web services platform (the "WS-*" platform) as part of his work in IBM Research. The Web services platform was about converting the Web and its core standards (HTTP, XML (now JSON), HTML etc.) from an information dissemination system to a distributed computing system. It was also the time that free and open source software was becoming the de facto enabler and accelerator of modern infrastructure, starting with the Linux Operating System, the Apache Web Server, the MySQL Database, the PHP Language (the "LAMP" stack) and many others.

Yet, at the time, contributions to almost every open source project was only by people based in the US and a few western nations. They saw this as an opportunity to create a brand for Sri Lanka's software developers not as a low-cost destination, but rather as a place where smart, creative, hardworking engineers create the software that powers the world.

LSF set out to create an environment to make it possible for Sri Lankan developers to contribute to, and lead, the next generation of platform infrastructure software.

### Members

LSF is registered as a company limited by guarantee in 2003, which is the vehicle for creating not-for-profit busineses in the country. The members serve as the guarantors of the company in terms of financial operation and commitment to purpose.

The members are / were:

<table>
    {% for member in site.data.members %}
        {% assign person = member[1] %}
        <tr>
            <td width="20%" style="vertical-align: top;">
                <img src="{{ site.baseurl }}/{{ person.image }} " width="100%">
            </td>
            <td>
                <p id="{{ member[0] }}">
                    <b> {{ person.name }} </b><br>
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

The Articles of Association of LSF are <a href="{{ site.baseurl }}/assets/docs/2003-Articles-Of-Association.pdf">here</a>.

## Phase 1 (2003 to 2013): Building open source technology around web services & Sahana {#phase1}
This phase is what led to the creation of WSO2 on top of the Apache Axis2 project which LSF developed with a $100K grant from the Swedish International Development Agency (from 2004 to 2005). After WSO2 launched in 2005, LSF continued to do various projects in web services but work in that area slowed down a lot as Sahana took primary focus.


In 2004, after the tsunami we also started the Sahana disaster management platform project which became our focus for many years, eventually culminating in it being donated to a dedicated foundation (the Sahana Software Foundation [1]) in 2009.

Projects done in this phase include Apache Axis C++, Apache Axis2, Sahana and Dalesa.

## Phase 2 (2013 to 2018): Open source incubator - building open source businesses {#phase2}

In this phase we attempted to support open source projects in Sri Lanka to become successful global businesses. While we had some successful projects in this phase, none of them graduated to become succesful businesses.

Projects done in this phase include Ninithi.

A <a href="https://drive.google.com/file/d/1N-sbHZlvvau1cYbdr4bZzKhxOWslgL8i/view?usp=sharing">mini-book was published</a> to celebrate our 15th anniversary in 2018.

## Phase 3 (2019-2024): Code for Sri Lanka - building government solutions  {#phase3}

In this phase we focused on helping the government of Sri Lanka with various software solutions. While we had some good success, the efforts have not resulted in any permanent impact on Sri Lanka’s digital government platform or architecture.


During this phase, we also collaborated with <a href="https://www.rhsmith.umd.edu/directory/louiqa-raschid">Prof. Louiqa Raschid</a> from the University of Maryland, a former director of LSF, on the Karsha project. Karsha was aimed at making financial data more structured, accessible, analyzable and available.

Projects done in this phase include elections, education, transport and Karsha.

## Phase 4 (2025 onwards): Building digital public infrastructure for Sri Lanka and the world  {#phase4}

The term “Digital Public Infrastructure” (DPI) has been established primarily with India’s use of that term and their dramatic success is building their digital public infrastructure in a way that is very different from that of the US and China. From <em><a href="https://nbr.org/publication/the-indian-model-for-digitalization-a-blueprint-for-the-global-south/">The Indian Model for Digitalization</a></em>:

<blockquote>
India views this model as a third approach to digitalization. The first one is the U.S. approach, which is led by the private sector, with government policies supporting the private sector to scale technologies, innovate, and take technologies to the masses—within not only the United States but the rest of the world. There is also the Chinese model, where everything is government-driven and government-controlled. The general approach is to develop a walled online world with restrictions on foreign companies’ participation in the digital economy. India’s approach is a mix of the two, where government guides or builds the “railroads.” In other words, the Indian government will build the foundational infrastructure, opening doors for the private sector to innovate on top of this foundation and then scale these technologies.
</blockquote>

With Sri Lanka's government again embarking on a strong DPI path, the focus of LSF for this phase will be to build open source technology and solutions that can help Sri Lanka (and other nations) establish strong digital public infrastructure.

Our current DPI projects include Silver (a government-scale, secure, private email solution), OpenDIF (a platform for policy and consent-aware data sharing across data custodians, owners and consumers), and OpenSuperApp (a super app framework to digitally enable employees).

