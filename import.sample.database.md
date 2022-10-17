## 下载对应包，解压到 $ORACLE_HOME/demo/schema

https://github.com/oracle-samples/db-sample-schemas/releases/tag/v12.2.0.1

## volume 映射

`docker-compose.yml`

```
volumes:
  - ./db-sample-schemas-12.2.0.1.tar.gz:/opt/db-sample-schemas-12.2.0.1.tar.gz
```

## enter docker container shell

```bash
```bash
docker exec -it portable-oracle12c /bin/sh
```

as root

```bash
docker exec -u 0 -it portable-oracle12c /bin/sh
```

## Run scripts in docker container shell

```
# unzip
cd $ORACLE_HOME/demo/schema
cp /opt/db-sample-schemas-12.2.0.1.tar.gz $ORACLE_HOME/demo/schema/
tar -zxvf db-sample-schemas-12.2.0.1.tar.gz

# fix script
cd $ORACLE_HOME/demo/schema/db-sample-schemas-12.2.0.1
perl -p -i.bak -e 's#__SUB__CWD__#'$(pwd)'#g' *.sql */*.sql */*.dat 

# install
sqlplus sys/123456 as sysdba
@mksample 123456 123456 123456 123456 123456 123456 123456 123456 123456 temp /opt/oracle/product/12.2.0.1/dbhome_1/demo/schema/log/ localhost:1521/orcl
```