#apache/init.sls

include:
  - packages.apache

/var/www/html/index.html:
  file.managed:
    - source: salt://vms/apache/deploy_files/index.html
    - user: www-data
    - group: www-data
    - mode: 777
