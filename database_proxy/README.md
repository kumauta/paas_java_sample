# paas_java_sample

BasicAuth sample application

## create service
```
$ cf create-service mysql free mysql_sample
```

## deploy
```
$ cf push db-proxy -m 512m
```

## get database url and credential
```
$ cf ssh db-proxy
remote $ vcap@i3r9s05cmhk:~$ env | grep DATABASE_URL
DATABASE_URL=mysql2://USERNAME:PASSWORD@DBHOST:DBPORT/DBNAME?reconnect=true
$ exit
```

## create ssh tunnel
```
terminal1 $ cf ssh -N -T -L 3306:DBHOST:DBPORT db-proxy
terminal2 $ mysql -h 127.0.0.1 DBNAME -u USERNAME  -P 3306 -p
Enter password: PASSWORD
```
