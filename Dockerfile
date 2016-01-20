FROM cmfatih/phantomjs:1.9.7

RUN apt-get update -y
RUN apt-get install -y git python curl

WORKDIR /root
RUN git clone git://github.com/n1k0/casperjs.git
RUN mv casperjs /opt/
RUN ln -sf /opt/casperjs/bin/casperjs /usr/local/bin/casperjs
RUN mkdir /home/casperjs

WORKDIR /app

Add ./ .
