---
title: Årsmöte 2023
date: 2022-12-22 09:55:00
permalink: arsmöte-2023
---
Här följer årsmöteshandlingar för 2023 års årsmöte.

{% for doc in site.static_files %}
{% if doc.path contains 'annual_meetings/2023' %}
<a href="{{ doc.path }}">{{ doc.name }}</a>
{% endif %}
{% endfor %}
