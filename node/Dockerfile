FROM node:10-slim

RUN sed -i '/path-exclude \/usr\/share\/man/d' /etc/dpkg/dpkg.cfg.d/docker
RUN apt-get update && apt-get install -y less

ARG WORK
WORKDIR $WORK

RUN echo 'alias ll="ls -la --color=auto"' >> /usr/local/etc/bashrc
COPY ./entry.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/entry.sh

ENTRYPOINT ["entry.sh"]
