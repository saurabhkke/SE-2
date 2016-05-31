<?php
  include('connection.php');
  if(isset($_POST['submit'])){ 
	//$id = mysql_real_escape_string($_POST['id']);
        $id = $_POST['id'];
        $name = $_POST['name'];
	//$qr = mysql_query("insert into student VALUSE (int('$id'),'$name')");
	$qr = mysql_query("INSERT INTO student (sid,name) VALUES ($id,'$name')");
                if($qr==true){
                        echo "successfully";
                }
                else{
                        echo "Error";
                }
}	
	
?>

<html>
<body>
<form method="POST">
      ID :<input type="text" name = "id"><br>
      name :<input type="text" name = "name">
      <input type="submit" name = "submit" value="submit">
</form>
</body>
</html>
