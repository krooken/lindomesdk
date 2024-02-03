---
title: Årsmöte 2024
date: 2022-12-22 09:50:00
permalink: arsmöte-2024
---
Här följer årsmöteshandlingar för 2024 års årsmöte.

{% for doc in site.static_files %}
{% if doc.path contains 'annual_meetings/2024' %}
<a href="{{ doc.path }}">{{ doc.name }}</a>
{% endif %}
{% endfor %}
