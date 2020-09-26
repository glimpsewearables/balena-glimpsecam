service php7.3-fpm start
nginx -g 'daemon off;'
cd /home/pi/glimpse-cam
python GlimpseCam.py --console-log
