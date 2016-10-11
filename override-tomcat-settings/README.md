# paas_java_sample

Override tomcat setting sample application

## build
```
$ gradle clean
$ gradle build
```

## deploy
```
$ cf push -p .//build/libs/basic-auth-sample-1.0-SNAPSHOT.war
```

## configuration
```
$ vi manifest.yml
$ vi src/main/webapp/WEB-INF/conf/server.xml
$ vi src/main/webapp/WEB-INF/conf/tomcat-users.xml
```
