#!/bin/sh

dockerize -template /opt/map.xml.j2.tmpl:/opt/map.xml
java -jar /opt/MIPMapReduced.jar /opt/map.xml /opt/target /opt/postgresdb.properties
