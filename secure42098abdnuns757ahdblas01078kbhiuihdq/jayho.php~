<?php
include('connection.php');


include('connection.php');
          
if(isset($_POST['college_submit'])){ 
	$college_id = $_POST['college_id'];
        $name = $_POST['name'];
        $place_id = $_POST['place_id'];
	$ranking = $_POST['ranking'];
        $website = $_POST['website'];
        $email = $_POST['email'];
	$contact = $_POST['contact'];
	$street = $_POST['street'];
        $area = $_POST['area'];
        $city = $_POST['city'];
        $district = $_POST['district'];
        $state = $_POST['state'];
        $pincode = $_POST['pincode'];
        $description = $_POST['description'];


$qr=mysql_query("insert into college(name,place_id,ranking,website,email,contact,street,area,city,district,state,pincode,description)values('$name','$place_id',$ranking,'$website','$email',$contact,'$street','$area','$city','$district','$state',$pincode, '$description')");


        
}

if(isset($_POST['course_submit'])){ 
	$college_id = $_POST['college_id'];
        $college_id = $_POST['college_id'];
        $name = $POST['name'];
	$admission_start_date = $_POST['admission_start_date'];
        $admission_end_date = $_POST['admission_end_date'];
        $cut_off = $POST['cut_off'];
	
}
if(isset($_POST['fee_submit'])){ 
	$fee_id = $_POST['fee_id'];
        $college_id = $_POST['college_id'];
        $category = $POST['category'];
	$fee = $_POST['fee'];
}
if(isset($_POST['update'])){ 
	
}
if(isset($_POST['delete'])){ 
	
}


?>

<html>
<title>Adminlogin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="../static/css/bootstrap.min.css" rel="stylesheet">
  <script src="../static/js/jquery.min.js"></script>
  
  <script src="../static/js/bootstrap.min.js"></script>
  <link href="../static/css/adminloginstyle.css" rel="stylesheet">
<script src="../static/js/adminlogin.js"></script>
<script language="javascript" text="text/javascript">
	function dynamicdropdown(listindex)
	{
		var selectobject=document.getElementById('tablecolumn')
		var len = selectobject.length;
  		for (var i=1; i<len; i++){
     			selectobject.remove(1);
  		}
		switch(listindex)
		{
		case "college":
			
			document.getElementById('tablecolumn').options[1]= new Option("College-Id","college_id");
			document.getElementById('tablecolumn').options[2]= new Option("Name","name");
			document.getElementById('tablecolumn').options[3]= new Option("Placeid","placeid");
			document.getElementById('tablecolumn').options[4]= new Option("ranking","ranking");
			document.getElementById('tablecolumn').options[5]= new Option("website","website");
			document.getElementById('tablecolumn').options[6]= new Option("email","email");
			document.getElementById('tablecolumn').options[7]= new Option("contact","contact");
			document.getElementById('tablecolumn').options[8]= new Option("street","street");
			document.getElementById('tablecolumn').options[9]= new Option("area","area");
			document.getElementById('tablecolumn').options[10]= new Option("city","city");
			document.getElementById('tablecolumn').options[11]= new Option("district","district");
			document.getElementById('tablecolumn').options[12]= new Option("state","state");
			document.getElementById('tablecolumn').options[13]= new Option("pincode","pincode");
			document.getElementById('tablecolumn').options[14]= new Option("discription","discription");
			
			break;
		case "course":
			
			document.getElementById('tablecolumn').options[1]= new Option("Course-Id","course_Id");
			document.getElementById('tablecolumn').options[2]= new Option("College-Id","college_Id");
			document.getElementById('tablecolumn').options[3]= new Option("Course-name","course_name");
			document.getElementById('tablecolumn').options[4]= new Option("Start-Date","start_Date");
			document.getElementById('tablecolumn').options[5]= new Option("End-Date","end_Date");
			document.getElementById('tablecolumn').options[6]= new Option("Cut-Off","cut_off");
			break;
		case "fee":
			
			document.getElementById('tablecolumn').options[1]= new Option("Fee-Id","ee_Id");
			document.getElementById('tablecolumn').options[2]= new Option("Course_Id","course_id");
			document.getElementById('tablecolumn').options[3]= new Option("Category","category");
			document.getElementById('tablecolumn').options[4]= new Option("Fee","fee");
			break
		}
	}
</script>

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid" style="background-color: #1a8c9d;">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>

      <a class="navbar-brand" href="#">Database Management</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right nav-tabs" >
      <li class="active"><a data-toggle="tab" href="#welcome"><b>Welcome</b></a></li>
      <li><a data-toggle="tab" href="#insert"><b>Insert</b></a></li>
      <li><a data-toggle="tab" href="#update"><b>Update</b></a></li>        
      <li><a data-toggle="tab" href="#delete"><b>Delete</b></a></li>
     </ul>
	
     

    </div>
  </div>
</nav>

<div class="container">
<div class="tab-content">
     	<div id="welcome" class="tab-pane fade in active">
		<div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h1 class="panel-title text-center">Welcome sir</h1>
			 	</div>
			</div>
		</div>
	</div>
        </div>

	
	<div id="insert" class="tab-pane fade in active">
	
	 <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
		
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Insert Data in table</h3>
				</div>
				
				<ul class="nav navbar-header navbar-nav nav-tabs" >
      					<li class="active"><a data-toggle="tab" href="#college"><b>College</b></a></li>
      					<li><a data-toggle="tab" href="#course"><b>Course</b></a></li>
      					<li><a data-toggle="tab" href="#fee"><b>Fee</b></a></li>              					
     				</ul><br><br><br>
				
			<div class="tab-content">
			<div id="college" class="tab-pane fade in active">
				<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" method="POST">
                    		<fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="College-Id" name="college_id" type="text" value="">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Name" name="name" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="Place_id" name="place_id" type="text" value="">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Ranking" name="ranking" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="Website" name="website" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="Email" name="email" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="Contact" name="contact" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="Street" name="street" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="Area" name="area" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="City" name="city" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="District" name="district" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="State" name="state" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="Pincode" name="pincode" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="Description" name="description" type="text" value="">
			    		</div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" name = "college_submit" value="submit">
					
			    	</fieldset>
			      	</form>
				</div>
			    </div>
				<div id="course" class="tab-pane fade in active">
				<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" method="POST">
                    			<fieldset>
					<div class="form-group">
			    			<input class="form-control" placeholder="Course-Id" name="course_id" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="College-id" name="college_id" type="text" value="">
			    		</div>

					<div class="form-group">
			    			<input class="form-control" placeholder="Course-Name" name="course_name" type="text" value="">
			    		</div>

					<div class="form-group">
			    			<input class="form-control" placeholder="Admission-Start-Date" name="admission_start_date" type="text" value="">
			    		</div>

					<div class="form-group">
			    			<input class="form-control" placeholder="Admission-End-Date" name="admission_end_date" type="text" value="">
			    		</div>

					<div class="form-group">
			    			<input class="form-control" placeholder="Cut-Off" name="cut_off" type="text" value="">
			    		</div>

			    		<input class="btn btn-lg btn-success btn-block" type="submit" name = "cource_submit" value="submit">
					</fieldset>
			      	</form>
				</div>
			   </div>

			<div id="fee" class="tab-pane fade in active">
				<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" method="POST">
                    			<fieldset>
					<div class="form-group">
			    			<input class="form-control" placeholder="Fee-Id" name="fee_id" type="text" value="">
			    		</div>
					<div class="form-group">
			    			<input class="form-control" placeholder="College-id" name="college_id" type="text" value="">
			    		</div>

					<div class="form-group">
			    			<input class="form-control" placeholder="Category" name="category" type="text" value="">
			    		</div>

					<div class="form-group">
			    			<input class="form-control" placeholder="Fee" name="fee" type="text" value="">
			    		</div>

			    		<input class="btn btn-lg btn-success btn-block" type="submit" name = "fee_submit" value="submit">
					</fieldset>
			      	</form>
				</div>
			   </div>
			</div>
			</div>
		</div>
	</div>
	
        </div>


	<div id="update" class="tab-pane fade in active">

		 <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Update Data</h3>
			 	</div>
				<div class="panel-body">
				<form accept-charset="UTF-8" role="form" method="POST">
                    		<fieldset>
				<center>
				<label>Select Table</label>
				<select class="form-control " id = "tablename" style = "width:50%;" onchange="javascript:dynamicdropdown(this.options[this.selectedIndex].value);">
					<option value = "select-college">Select-college</option>
    					<option value = "college">College</option>
   					<option value = "course">Course</option>
   					<option value = "fee">Fee</option>
				</select> 
				<br>
				<label>Select Table-Column</label>
				<select class="form-control " id = "tablecolumn" style = "width:50%;">
				<option value = "select-college">Select-Column</option>
				</select><br>
				<div class="form-group">
			    			<input class="form-control" placeholder="Change-Value" name="change_value" type="text" value="">
			    		</div>

				<input class="btn btn-lg btn-success btn-block" type="submit" name = "update" value="Update">

				</center>
				</fieldset>
				</form>
				</div>
			</div>
		</div>
	</div>
      	</div>

        <div id="delete" class="tab-pane fade in active">

		 <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Delete Record</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" method="POST">
                    		<fieldset>
				<center>
			    	  	<label>Select Table</label>
				<select class="form-control " id = "tablename" style = "width:50%;">
					<option value = "select-college">Select-college</option>
    					<option value = "college">College</option>
   					<option value = "course">Course</option>
   					<option value = "fee">Fee</option>
				</select> </center><br>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Enter-Delete-Id" name="delete_id" type="text" value="">
			    		</div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" name = "delete" value="delete">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
      	</div>
</div>
</div>
</body>
</html>
