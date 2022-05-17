FROM anasty17/mltb:latest

RUN apt update && apt upgrade -y
RUN apt-get install git -y
RUN git clone https://github.com/gillzxo/apptest /root/bot
RUN chmod 777 /root/bot
WORKDIR /root/bot
COPY extract /usr/local/bin
COPY pextract /usr/local/bin
RUN chmod +x /usr/local/bin/extract && chmod +x /usr/local/bin


RUN pip3 install --no-cache-dir -r requirements.txt
COPY start .
CMD ["bash", "start"]
