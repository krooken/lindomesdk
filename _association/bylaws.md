---
title: Stadgar
date: 2022-12-22 09:57:00
permalink: stadgar
---
{% assign static_files_ordered = site.static_files | sort: "name" | reverse %}
{% for doc in static_files_ordered %}
{% if doc.path contains 'bylaws' %}
<a href="{{ doc.path }}">{{ doc.name }}</a>
{% endif %}
{% endfor %}
