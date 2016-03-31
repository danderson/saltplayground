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

/etc/ferm/ports.d/saltmaster.conf:
  file.managed:
    - source: salt://base/ferm-port.conf
    - user: root
    - group: root
    - mode: 0644
    - context:
        tcp-ports: [4505, 4506]
