# tomcat8

Tomcat8 sample

## deploy
```
$ cf push
```
## check tomcat version
```
$ cf logs tomcat8 --recent | grep "Apache Tomcat"
```

## config tomcat version
```
$ vi manifest.yml
JBP_CONFIG_TOMCAT: '{tomcat: { version: 8.0.+ }}'
```
