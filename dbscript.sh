#! /bin/bash
cat bitrix/php_interface/dbconn.php  |                                              
     awk '{                                                                         
             if ($1=="$DBLogin") DBLogin=$3;                                        
             else if ($1=="$DBPassword") DBPassword =$3;                            
             else if ($1=="$DBName") DBName =$3;                                    
             else if ($1=="$DBHost") DBHost =$3;                                    
          } END {                                            
#       print "mysqldump -u"DBLogin" -p\x27"DBPassword"\x27 "DBName" -h"DBHost " > " DBName".sql"        
        print "mysqldump -u"DBLogin" -p "DBName" -h"DBHost " > " DBName".sql" 
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
       print DBPassword     
         }'      |
    sed 's/\"//g' |
    sed 's/\;//g' 
