#!/bin/bash

Path1="/home/bitrix/backup/"
dbname="masterbel"
dat=$(date +%Y-%m-%d_%H)


rm ${Path1}*.sql*

echo "###################################" | tee -a  ${Path1}backup.log
echo -n  "-- Start dumping "               | tee -a  ${Path1}backup.log

date                                       | tee -a ${Path1}backup.log

mysqldump --insert-ignore --skip-lock-tables --single-transaction=TRUE dbmasterbel > ${Path1}${dbname}${dat}.sql

tail -n1     ${Path1}${dbname}${dat}.sql   | tee -a  ${Path1}backup.log

gzip         ${Path1}${dbname}${dat}.sql

file         ${Path1}${dbname}${dat}.sql.gz | tee -a ${Path1}backup.log
gzip --list  ${Path1}${dbname}${dat}.sql.gz | tee -a ${Path1}backup.log
