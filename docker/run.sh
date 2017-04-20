#!/bin/sh

dockerize -template /opt/map.xml.tmpl:/opt/map.xml
dockerize -template /opt/mipmap-db.properties.tmpl:/opt/mipmap-db.properties
dockerize -template /opt/i2b2-db.properties.tmpl:/opt/i2b2-db.properties

echo /opt/map.xml
cat /opt/map.xml
echo
echo /opt/mipmap-db.properties
cat /opt/mipmap-db.properties
echo
echo /opt/i2b2-db.properties
cat /opt/i2b2-db.properties
echo

cd /opt

echo "java -jar /opt/MIPMapReduced.jar /opt/map.xml /opt/mipmap-db.properties -db /opt/i2b2-db.properties"
java -jar /opt/MIPMapReduced.jar /opt/map.xml /opt/mipmap-db.properties -db /opt/i2b2-db.properties
