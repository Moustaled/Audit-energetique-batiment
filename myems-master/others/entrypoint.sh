#!/bin/bash
# Démarrage nginx
nginx -g "daemon off;" -c /etc/nginx/nginx.conf &
# Démarrage gunicorn
gunicorn app:api -b 0.0.0.0:8000 --timeout 600 --workers 4
