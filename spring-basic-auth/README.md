# paas_java_sample

SpringBoot BasicAuth sample application

## init
```
$ gradle eclipse
```

## build
```
$ gradle clean
$ gradle build
```

## deploy
```
$ cf push -p ./build/libs/sample.war
```
