<?php
   $host        = "host = gashub.amicodevelopment.net";

$port        = "port = 22";
   $dbname      = "dbname = gashub";
   $credentials = "username = gashubadmin password=123456";

   $db = pg_connect( "$host $port $dbname $credentials"  );
   if(!$db) {
      echo "Error : Unable to open database\n";
  } 
//else {
//       echo "connected database successfully\n";
//    }
?>
