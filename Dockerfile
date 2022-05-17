FROM iamliquidx/megasdk:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app


COPY requirements.txt .
COPY extract /usr/local/bin
RUN chmod +x /usr/local/bin/extract
RUN pip3 install --no-cache-dir -r requirements.txt && \
    apt-get -qq purge git


COPY netrc .
COPY netrc /usr/src/app/.netrc
COPY tr.tar .
RUN tar -xvf tr.tar
COPY aria.sh .
COPY start.sh
RUN chmod +x start.sh
RUN chmod +x aria.sh
COPY . .

CMD ["bash","start.sh"]
