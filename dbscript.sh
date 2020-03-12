#! /bin/bash
cat dbconn.php  |
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
