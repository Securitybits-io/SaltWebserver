nginx:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: nginx
      #- file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-available/default
