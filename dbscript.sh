#! /bin/bash
cat bitrix/php_interface/dbconn.php  |
     awk '{
             if ($1=="$DBLogin") DBLogin=$3;
             else if ($1=="$DBPassword") DBPassword =$3;
             else if ($1=="$DBName") DBName =$3;
             else if ($1=="$DBHost") DBHost =$3;
          } END {
             print "mysqldump -u"DBLogin" -p"DBPassword" "DBName" -h"DBHost " > " DBName".sql"
          }'      | 
    sed 's/\"//g' |
    sed 's/\;//g'


cat bitrix/php_interface/dbconn.php  | awk '{ if ($1=="$DBLogin") DBLogin=$3; else if ($1=="$DBPassword") DBPassword =$3; else if ($1=="$DBName") DBName =$3;  else if ($1=="$DBHost") DBHost =$3;} END { print "mysqldump -u"DBLogin" -p"DBPassword" "DBName" -h"DBHost " > " DBName".sql" }'| sed 's/\"//g' | sed 's/\;//g'



function dbi       
              cat bitrix/php_interface/dbconn.php  |
     awk '{
             if ($1=="$DBLogin") DBLogin=$3;
             else if ($1=="$DBPassword") DBPassword =$3;
             else if ($1=="$DBName") DBName =$3;
             else if ($1=="$DBHost") DBHost =$3;
          } END {
             print "mysqldump -u"DBLogin" -p"DBPassword" "DBName" -h"DBHost " > " DBName".sql"
          }'      | 
    sed 's/\"//g' |
    sed 's/\;//g'
                       end

function dbi 
cat bitrix/php_interface/dbconn.php  | awk '{ if ($1=="$DBLogin") DBLogin=$3; else if ($1=="$DBPassword") DBPassword =$3; else if ($1=="$DBName") DBName =$3;  else if ($1=="$DBHost") DBHost =$3;} END { print "mysqldump -u"DBLogin" -p"DBPassword" "DBName" -h"DBHost " > " DBName".sql" }'| sed 's/\"//g' | sed 's/\;//g'
end


#! /bin/bash
dat=$(date +%Y-%m-%d_%H)

cat bitrix/php_interface/dbconn.php  |
     awk '{
             if ($1=="$DBLogin") DBLogin=$3;
             else if ($1=="$DBPassword") DBPassword =$3;
             else if ($1=="$DBName") DBName =$3;
             else if ($1=="$DBHost") DBHost =$3;
          } END {
              print "mysqldump -u"DBLogin" -p**** "DBName" -h"DBHost " > " DBName".sql"
         }'      |
    sed 's/\"//g' |
    sed 's/\;//g'

cat bitrix/php_interface/dbconn.php  |
     awk '{
             if ($1=="$DBLogin") DBLogin=$3;
             else if ($1=="$DBPassword") DBPassword =$3;
             else if ($1=="$DBName") DBName =$3;
             else if ($1=="$DBHost") DBHost =$3;
          } END {
             print "mysqldump -u"DBLogin" -p"DBPassword" "DBName" -h"DBHost " > " DBName".sql"
          }'      |
    sed 's/\"//g' |
    sed 's/\;//g' | sh

tail -n1 *.sql


#new sed 
# sed -re 's/(\;|\")//g'
