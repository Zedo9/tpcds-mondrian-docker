#!/bin/sh

docker exec -d /bin/sh -c "imp tpcds/tpcds@XE file='/data/tpcds.dmp' fromuser=tpcds" oracledb