FROM hbpmip/mipmap:0.6.0
MAINTAINER Ludovic Claude <ludovic.claude@chuv.ch>

ARG BUILD_DATE
ARG EXPORT_CMD="-csv"
ENV EXPORT_CMD=$EXPORT_CMD
ARG EXPORT_PATH="/opt/target"
ENV EXPORT_PATH=$EXPORT_PATH

#ARG VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="hbpmip/mipmap-demo-ehr-to-i2b2" \
    org.label-schema.description="MIPMap configured to transform EHR demo data to I2B2" \
    org.label-schema.url="https://github.com/HBPSP8Repo/MIPMap-demo-ehr-to-i2b2" \
    org.label-schema.vcs-type="git" \
    #org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/HBPSP8Repo/MIPMap-demo-ehr-to-i2b2" \
    org.label-schema.vendor="WIM AUEB" \
    org.label-schema.docker.dockerfile="Dockerfile" \
    org.label-schema.schema-version="1.0"

COPY docker/map.xml.tmpl /opt/
COPY docker/run.sh /run.sh

CMD ["/run.sh"]
