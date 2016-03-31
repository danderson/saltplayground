unattended-upgrades:
  pkg.installed: []
  file.managed:
    - name: /etc/apt/apt.conf.d/20auto-upgrades
    - source: salt://base/20auto-upgrades
    - user: root
    - group: root
    - mode: 644
