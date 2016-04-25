# paas_java_sample

BasicAuth sample application

## compile
```
$ javac -d app src/test/Sample.java
```

## create jar
```
$ cd app
$ jar cmf ../mani.mf test.jar test
```

## deploy
```
$ cf push -p test.jar
```

