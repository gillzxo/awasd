FROM breakdowns/mega-sdk-python:latest
WORKDIR /app
COPY . .
RUN apt-get install git -y
RUN pip3 install -r requirements.txt
RUN git clone https://github.com/gillzxo/apptest.git
    /apptest

CMD ["bash","start.sh"]
