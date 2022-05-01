FROM sabotagecla6/mint20.3:latest

# ***********************************************
# add source lists, for xrdp-pulseaudio-installer
# ***********************************************
RUN echo "deb http://archive.ubuntu.com/ubuntu bionic main restricted universe multiverse" >> /etc/apt/sources.list.d/official-package-repositories.list

# ***********************************************
# install packages for xrdp, and do setting
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        xrdp supervisor

RUN { \
      echo "[supervisord]"; \
      echo "user=root"; \
      echo "nodaemon=true"; \
      echo "logfile=/var/log/supervisor/supervisord.log"; \
      echo "childlogdir=/var/log/supervisor"; \
      echo "[program:xrdp]"; \
      echo "command=service xrdp restart"; \
      echo "user=root"; \
    } > /etc/supervisor/xrdp.conf

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod u+x /docker-entrypoint.sh
CMD /docker-entrypoint.sh
