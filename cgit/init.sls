# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - cgit.install
  - cgit.user
  - cgit.config
  - cgit.service

extend:
  cgit_user__user:
    user.present:
      - require:
        - pkg: cgit_install__pkg

  cgit_config__conffile:
    file:
      - require:
        - pkg: cgit_install__pkg
        - user: cgit_user__user

  cgit_service__service:
    service:
      - watch:
        - file: cgit_config__conffile
      - require:
        - pkg: cgit_install__pkg
        - user: cgit_user__user
