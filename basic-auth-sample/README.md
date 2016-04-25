# paas_java_sample

BasicAuth sample application

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
```
