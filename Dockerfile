FROM balenalib/rpi-raspbian

RUN mkdir /app

RUN addgroup pi && adduser --system --ingroup pi pi

COPY pikrellcam/ /home/pi/pikrellcam/
COPY start.sh /start.sh

ENV USER=pi

RUN chown -R pi:pi /home/pi && echo "pi ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER pi

RUN cd /home/pi/pikrellcam && bash install-pikrellcam.sh

EXPOSE 80

CMD ["sudo", "bash", "/start.sh"]


