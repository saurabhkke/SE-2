<?php
include("connection.php");
$qr  = mysql_query("select * from college where college.city='mumbai'");
$college = array();
while($row = mysql_fetch_assoc($qr))
	{
		$temp = array(college_id => $row['college_id'], name => $row['name'], place_id => $row['place_id'], ranking => $row['ranking'], website => $row['website'], email => $row['email'], contact => $row['contact'], street => $row['street'], area => $row['area'], city => $row['city'], district => $row['district'], state => $row['state'], pincode => $row['pincode'], description => $row['description']);		
		array_push($college,$temp);
	}
echo sizeof($college);

?>
