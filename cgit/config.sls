# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "cgit/map.jinja" import cgit with context %}

cgit_config__conffile:
  file.managed:
    - name: {{ cgit.conffile }}
    - source: salt://cgit/files/configtempl.jinja
    - template: jinja
    - context:
      confdict: {{cgit|json}}
    - mode: 644
    - user: root
    - group: root
