FROM hbpmip/mipmap:0.3
MAINTAINER Ludovic Claude <ludovic.claude@chuv.ch>

COPY docker/map.xml.tmpl /opt/
COPY docker/run.sh /run.sh

CMD ["/run.sh"]
