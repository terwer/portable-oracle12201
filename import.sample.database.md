## 下载对应包，解压到 $ORACLE_HOME/demo/schema

https://github.com/oracle-samples/db-sample-schemas/releases/tag/v12.2.0.1

## 替换字符

```
perl -p -i.bak -e 's#__SUB__CWD__#'$(pwd)'#g' *.sql */*.sql */*.dat 
```

## 安装
```
sqlplus sys/123456 as sysdba

@mksample 123456 123456 123456 123456 123456 123456 123456 123456 123456 temp /opt/oracle/product/19c/dbhome_1/demo/schema/log/ localhost:1521/orcl
```