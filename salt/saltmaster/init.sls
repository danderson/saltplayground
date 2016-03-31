/etc/salt/master.d/10-gitfs.conf:
  file.managed:
    - source: salt://saltmaster/10-gitfs.conf
    - user: root
    - group: root
    - mode: 644

salt-master:
  service.running:
    - enable: True
    - watch:
      - file: /etc/salt/master.d/10-gitfs.conf
