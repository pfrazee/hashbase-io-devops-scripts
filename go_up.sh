rm /etc/nginx/sites-enabled/maintenance
ln -s /etc/nginx/sites-available/hypercloud /etc/nginx/sites-enabled
service nginx reload
