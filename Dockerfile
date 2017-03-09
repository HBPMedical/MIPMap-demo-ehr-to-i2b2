FROM hbpmip/mipmap
MAINTAINER Ludovic Claude <ludovic.claude@chuv.ch>

COPY docker/map.xml.j2 /opt/
COPY docker/run.sh /run.sh

CMD ["/run.sh"]
