rm /etc/nginx/sites-enabled/hypercloud
ln -s /etc/nginx/sites-available/maintenance /etc/nginx/sites-enabled
service nginx reload
