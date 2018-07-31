# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "cgit/map.jinja" import cgit with context %}

cgit_service__service:
  service.{{ cgit.service.state }}:
    - name: {{ cgit.service.name }}
{% if cgit.service.state in [ 'running', 'dead' ] %}
    - enable: {{ cgit.service.enable }}
{% endif %}

