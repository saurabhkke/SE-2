<?php
//echo "batabase connection";
   $servername = "127.11.195.2";
   $username = "admin1vikSjB";
   $password = "5rbpG4rQJ3eB";
   $conn = mysql_connect($servername, $username, $password);
   if($conn->connect_error)
   {
    die("connection error");
   }
   
   $db = mysql_select_db('se');
   if($db->connect_error)
   {
    die("connection error database");
   }
?> 
