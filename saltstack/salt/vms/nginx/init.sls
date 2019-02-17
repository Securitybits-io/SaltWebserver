#nginx/init.sls
include:
  - packages.nginx

##### File Deploys #####

/etc/nginx/sites-available/default:
  file.managed:
    - source: salt://vms/nginx/deploy_files/default
    - user: root
    - group: root
    - mode: 644

/etc/nginx/sites-available/blog.dev.salt.conf:
  file.managed:
    - source: salt://vms/nginx/deploy_files/blog.dev.salt.conf
    - user: root
    - group: root
    - mode: 644

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://vms/nginx/deploy_files/nginx.conf
    - user: root
    - group: root
    - mode: 644

##### SYMLINKS #####

/etc/nginx/sites-enabled/default:
  file.symlink:
    - target: /etc/nginx/sites-available/default
    - require:
      - file: /etc/nginx/sites-available/default

/etc/nginx/sites-enabled/blog.dev.salt.conf:
  file.symlink:
    - target: /etc/nginx/sites-available/blog.dev.salt.conf
    - require:
      - file: /etc/nginx/sites-available/blog.dev.salt.conf
