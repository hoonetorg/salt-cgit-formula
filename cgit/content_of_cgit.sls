# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "cgit/map.jinja" import cgit with context %}

/tmp/cgit.yaml:
  file.managed:
    - contents: |
        {{cgit|yaml(False)|indent(8)}}
