#!/bin/bash
echo "###############################################" | tee -a  /home/bitrix/backup/backup.log
echo -n  "-- Start dumping "|tee -a  /home/bitrix/backup/backup.log
date | tee -a /home/bitrix/backup/backup.log

mysqldump --insert-ignore --skip-lock-tables --single-transaction=TRUE dbNAME > /home/bitrix/backup/dbNAME.sql

tail -n1 /home/bitrix/backup/dbNAME.sql | tee -a /home/bitrix/backup/backup.log

gzip dbNAME.sql

gzip --list  dbNAME.sql.gz | tee -a /home/bitrix/backup/backup.log
file dbNAME.sql.gz         | tee -a /home/bitrix/backup/backup.log
