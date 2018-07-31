{%- from "cgit/map.jinja" import cgit with context -%}
cgit_user__user:
  user.present:
    - name: {{cgit.user.name}}
    - optional_groups: {{cgit.user.optional_groups|json}}
