FROM artemisfowl004/uploadbot
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
COPY extract /usr/bin
RUN chmod +x /usr/bin/extract
CMD ["bash","start"]
