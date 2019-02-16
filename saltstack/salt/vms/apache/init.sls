#apache/init.sls

include:
  - packages.apache

/var/www/html/index.html:
  file.managed:
    - source: salt://vms/apache/deploy_files/index.html
    - user: www-data
    - group: www-data
    - mode: 777

/etc/apache2/ports.conf:
  file.managed:
    - source: salt://vms/apache/deploy_files/ports.conf
    - user: root
    - group: root
    - mode: 644

/etc/apache2/apache2.conf:
  file.managed:
    - source: salt://vms/apache/deploy_files/apache2.conf
    - user: root
    - group: root
    - mode: 644
