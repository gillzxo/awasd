FROM anasty17/mltb:latest

RUN apt update && apt upgrade -y
RUN apt-get update && apt-get install -y \
  autoconf \
  autotools-dev \
  build-essential \
  bzip2 \
  ccache \
  curl \
  dnsutils \
  gcc \
  gcc-multilib \
  git \
  golang \
  gyp \
  lcov \
  libc6 \
  libc6-dbg \
  libc6-dev \
  libgtest-dev \
  libtool \
  make \
  perl \
  strace \
  python-dev \
  python-setuptools \
  python-yaml \
  telnet \
  unzip \
  wget \
  zip && apt-get clean
  
RUN apt-get install git -y
RUN git clone https://github.com/gillzxo/apptest /root/bot
    bot && python3 -m bot
    
RUN chmod 777 /root/bot
WORKDIR /root/bot
COPY extract /usr/local/bin
COPY pextract /usr/local/bin
RUN chmod +x /usr/local/bin/extract && chmod +x /usr/local/bin


RUN pip3 install --no-cache-dir -r requirements.txt
COPY start .
CMD ["bash", "start"]
