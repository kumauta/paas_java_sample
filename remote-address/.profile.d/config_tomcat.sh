#!/bin/bash

TOMCAT_ROOT='/home/vcap/app/.java-buildpack/tomcat'

cp ${TOMCAT_ROOT}/webapps/ROOT/WEB-INF/config/server.xml ${TOMCAT_ROOT}/conf/server.xml
