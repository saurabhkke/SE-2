<?php
//echo "batabase connection";
   $servername = "localhost";
   $username = "root";
   $password = "";
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
