#!/bin/sh

docker exec -it oracledb /bin/sh -c 'sqlplus sys/$ORACLE_PASSWORD@//localhost:1521/xe as sysdba'