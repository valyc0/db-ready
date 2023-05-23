mkdir data
chmod 777 data

cat << EOF > ./startup.sql
alter session set "_ORACLE_SCRIPT"=true;
DROP USER ORACLEUSR CASCADE; 

alter session set "_ORACLE_SCRIPT"=true;  
CREATE USER ORACLEUSR IDENTIFIED BY ORACLEUSR;

GRANT CONNECT TO ORACLEUSR;

GRANT CONNECT, RESOURCE, DBA TO ORACLEUSR;

GRANT UNLIMITED TABLESPACE TO ORACLEUSR;
EOF




docker run -d -p 1521:1521 -e ORACLE_PASSWORD=oracle -v $PWD/data:/opt/oracle/oradata -v $PWD/startup.sql:/docker-entrypoint-initdb.d/startup.sql gvenzl/oracle-xe:21

