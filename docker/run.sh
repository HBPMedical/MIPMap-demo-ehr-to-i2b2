#!/bin/sh

dockerize -template /opt/map.xml.tmpl:/opt/map.xml
cp /opt
java -jar /opt/MIPMapReduced.jar /opt/map.xml /opt/target /opt/postgresdb.properties
