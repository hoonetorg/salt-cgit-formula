# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "cgit/map.jinja" import cgit with context %}

cgit_install__pkg:
  pkg.installed:
    - pkgs: {{ cgit.pkgs | tojson }}
