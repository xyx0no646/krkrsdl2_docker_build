# https://github.com/IL2HorusTeam/docker-wine/blob/master/Dockerfile
FROM i386/debian:trixie-slim

# 日本語対応
RUN apt-get update
RUN apt install -y locales
RUN locale-gen ja_JP.UTF-8
RUN LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
RUN export PATH=$PATH:'/usr/local/bin:/usr/bin:/bin'
RUN echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

RUN set -eux; \
    dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        software-properties-common \
        apt-transport-https \
        gpg-agent \
        curl \
    && curl -L -O https://dl.winehq.org/wine-builds/winehq.key \
    && apt-key add winehq.key \
    && apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' \
    && rm winehq.key \
    && apt-get update \
    && apt-get install -y --install-recommends \
        wine \
    && apt-get remove --purge -y \
        software-properties-common \
    && apt-get autoremove -y \
    && apt-get clean 
#COPY local.conf /etc/fonts/local.conf

# for 32bit environment only
ENV WINEARCH=win32

RUN apt-get install -y xauth
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        xvfb \
    && mkdir -p /root/.cache/wine \
    && cd /root/.cache/wine \
    && curl -L -O http://dl.winehq.org/wine/wine-gecko/2.47/wine_gecko-2.47-x86_64.msi \
    && curl -L -O http://dl.winehq.org/wine/wine-gecko/2.47/wine_gecko-2.47-x86.msi \
    && curl -L -O http://dl.winehq.org/wine/wine-mono/4.7.5/wine-mono-4.7.5.msi \
    && xvfb-run wineboot -u \
    && apt-get remove --purge -y \
        xvfb \
    && apt-get autoremove -y \
    && apt-get clean 

#OpenSound
RUN cd /tmp
RUN apt-get install -y bzip2
RUN curl -OL http://www.opensound.com/developer/sources/stable/gpl/oss-v4.2-build2019-src-gpl.tar.bz2
RUN tar -xvf oss-v4.2-build2019-src-gpl.tar.bz2
RUN mkdir -p /usr/lib/oss/include/sys
RUN cp oss-v4.2-build2019-src-gpl/include/soundcard.h /usr/lib/oss/include/sys/

# clang
# RUN dpkg --clear-avail
# RUN apt-get update
# RUN apt-get install -y build-essential
# RUN apt-get install -y flex bison
RUN apt-get install -y git