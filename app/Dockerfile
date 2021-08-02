FROM linuxserver/bookstack:v0.30.4-ls112

COPY 98-redis 97-hostname /etc/cont-init.d/

RUN chmod 0755 /etc/cont-init.d/98-redis /etc/cont-init.d/97-hostname

ENV DEVICE_HOSTNAME bookstack
