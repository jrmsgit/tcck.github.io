FROM alpine:3

LABEL maintainer="Jeremías Casteglione <jrmsdev@gmail.com>"
LABEL version="2020.10.01"

USER root:root
WORKDIR /root

ENV USER root
ENV HOME /root

RUN apk upgrade --no-cache -U && apk add --no-cache hugo

ARG USER_UID
ARG USER_GID

RUN addgroup -g ${USER_GID} tcck \
	&& adduser -h /home/tcck -g tcck -s /bin/sh -G tcck -D -u ${USER_UID} tcck

RUN mkdir -vp -m 0750 /src && chown -vR tcck:tcck /src

VOLUME /src/website

USER tcck:tcck
WORKDIR /home/tcck

ENV USER tcck
ENV HOME /home/tcck

ARG USER_UMASK

RUN printf 'umask %s\n' "${USER_UMASK}" >>/home/tcck/.profile
RUN printf "export PS1='%s '\n" '\h:\W\$' >>/home/tcck/.profile

EXPOSE 1313

WORKDIR /src/website
CMD /bin/sh -l
