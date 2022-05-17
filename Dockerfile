FROM iamliquidx/megasdk:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app


COPY requirements.txt .
COPY extract /usr/local/bin
RUN chmod +x /usr/local/bin/extract
RUN pip3 install --no-cache-dir -r requirements.txt && \
    apt-get -qq purge git

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
COPY netrc .
COPY netrc /usr/src/app/.netrc
COPY galaxy.tar .
RUN tar -xvf galaxy.tar
RUN chmod +x aria.sh

CMD ["bash","start.sh"]
