#!/bin/bash
Path1="/home/bitrix/backup/rotation_bitrix_backup.log"
Path2="/home/bitrix/backup_bitrix/archive"
RDate=2

date >> ${Path1}
echo "${Path2}" >> ${Path1}
find ${Path2}  -type f -mtime + ${RDate} -exec rm -rf {} \;
ls -la ${Path2}>> ${Path1}
echo '############################'>> ${Path1}
echo '           '>> ${Path1}
