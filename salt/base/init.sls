unattended-upgrades:
  pkg.installed: []

/etc/apt/apt.conf.d/20auto-upgrades:
  file.managed:
  - source: salt://base/20auto-upgrades
  - user: root
  - group: root
  - mode: 644

ferm:
  pkg.installed: []
  service.running:
    - enable: True
    - watch:
      - file: /etc/ferm/ferm.conf

/etc/ferm/ferm.conf:
  file.managed:
  - source: salt://base/ferm.conf
  - user: root
  - group: root
  - mode: 644

/etc/ferm/ports.d:
  file.directory:
  - user: root
  - group: root
  - mode: 755
