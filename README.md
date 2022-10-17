## Config

1.edit `OracleDatabase/SingleInstance/dockerfiles/12.2.0.1/dbca.rsp.tmpl` , and change `totalMemory=2048` to `totalMemory=4000` or whatever value you want.

2.In Docker Desktop, update the allocated memory to a value more than the value above.

## Building

```bash
./buildContainerImage.sh -v 12.2.0.1 -e
```

## Run

```bash
docker compose up --build
```

## Getting a shell on the container
First run docker ps to get the container ID. Then run: `docker exec -it portable-oracle12c /bin/bash`

Or as root: `docker exec -u 0 -it portable-oracle12c /bin/bash`

## Run Sqlplus

```bash
docker exec -it portable-oracle12c /bin/sh
sqlplus sys/123456 as sysdba
```

## Import sample database

See [import.sample.database.md](import.sample.database.md)