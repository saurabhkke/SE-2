<?php
if(isset($_POST['login'])){ 
	$mymail = "saurabh.kesarawani@gmail.com";
	$mypassword = "welcome";
        $usermail = $_POST['email'];
        $userpass = $_POST['password'];
	if($mymail==$usermail and $mypassword==$userpass){
		 header('Location: secure42098abdnuns757ahdblas01078kbhiuihdq/jayho.php');	
	}
}
?>
<html>
<head>
<title>Adminlogin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="static/css/bootstrap.min.css" rel="stylesheet">
  <script src="static/js/jquery.min.js"></script>
  
  <script src="static/js/bootstrap.min.js"></script>
  <link href="static/css/adminloginstyle.css" rel="stylesheet">
<script src="static/js/adminlogin.js"></script>
</head>
<!-- This is a very simple parallax effect achieved by simple CSS 3 multiple backgrounds, made by http://twitter.com/msurguy -->
<body>
<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Please sign in</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" method="POST">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="E-mail" name="email" type="text" value="">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="">
			    		</div>
			    		<div class="checkbox">
			    	    	<label>
			    	    		<input name="remember" type="checkbox" value="Remember Me"> Remember Me
			    	    	</label>
			    	    </div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" name = "login" value="Login">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
