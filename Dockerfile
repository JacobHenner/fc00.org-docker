FROM python:2
MAINTAINER Jacob Henner <code@ventricle.us>

RUN apt-get update && apt-get -y install graphviz
RUN pip install cjdns requests flask flup mysql pygraphviz MySQL-python networkx
RUN git clone https://github.com/zielmicha/fc00.org /srv/fc00.org/
RUN git clone https://github.com/zielmicha/nodedb /srv/fc00.org/web/nodedb
WORKDIR /srv/fc00.org/web
RUN sed -i -e 's/localhost/0.0.0.0/' web.py
COPY web_config.example.cfg web_config.cfg

EXPOSE 3000
VOLUME ["/srv/fc00.org/web/"]
CMD python web.py
