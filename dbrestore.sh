#! /bin/bash                                                                        
dat=$(date +%Y-%m-%d_%H)                                                            
                                                                                    
cat bitrix/php_interface/dbconn.php  |                                              
     awk '{                                                                         
             if ($1=="$DBLogin") DBLogin=$3;                                        
             else if ($1=="$DBPassword") DBPassword =$3;                            
             else if ($1=="$DBName") DBName =$3;                                    
             else if ($1=="$DBHost") DBHost =$3;                                    
          } END {                                                                                                                                    
          print "mysqldump -u"DBLogin" -p\x27"DBPassword"\x27 "DBName" -h"DBHost " < "      
         }'      |                                                                  
    sed 's/\"//g' |                                                                 
    sed 's/\;//g'