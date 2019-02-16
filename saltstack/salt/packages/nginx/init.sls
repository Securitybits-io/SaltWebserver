nginx:
  pkg.installed: []
  service.running:
    - watch:
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-available/default
    - require:
      - pkg: nginx
