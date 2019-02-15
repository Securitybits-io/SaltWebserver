nginx:
  pkg.installed:
    - pkgs:
      - nginx
  service.running:
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-availible/default
