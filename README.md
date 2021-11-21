# About

A simple docker-compose configuration for running and experimenting with TPC-DS queries.

# Getting started

1. Start the `tomcat` and `oracledb` services by running `docker-compose up -d`.
2. Create a `tpcds` user in Oracle XE and grant him the **DBA** role.

```sql
CREATE USER tpcds IDENTIFIED by tpcds;
GRANT dba TO tpcds;
```

3. Import the dump data to the created database instance by running the `import-dump.sh`.
4. Navigate to `localhost:8080/TPCDS2019` in your browser.
