#!/bin/bash
echo "###############################################" | tee -a  /home/bitrix/backup/backup.log
echo -n  "-- Start dumping "|tee -a  /home/bitrix/backup/backup.log
date | tee -a /home/bitrix/backup/backup.log

mysqldump --insert-ignore --skip-lock-tables --single-transaction=TRUE dbmasterbel > /home/bitrix/backup/masterbel.sql

tail -n1 /home/bitrix/backup/masterbel.sql | tee -a /home/bitrix/backup/backup.log

gzip masterbel.sql

gzip --list  masterbel.sql.gz | tee -a /home/bitrix/backup/backup.log
file masterbel.sql.gz         | tee -a /home/bitrix/backup/backup.log
