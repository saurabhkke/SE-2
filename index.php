<!DOCTYPE html>
<html lang="en">
<head>
  <title>EARA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
  <link href="static/css/bootstrap.min.css" rel="stylesheet">
  <link href="static/css/simple-sidebar.css" rel="stylesheet">
  <script src="static/js/jquery.min.js"></script>
  
  <script src="static/js/bootstrap.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true&libraries=places"></script> 
  <link rel="stylesheet"  type= "text/css" href="static/css/style.css">  
 <style>
	#sample {
         height: 600px;
         margin-right: 30%;
      }

      #right-panel {
        height: 600px;
        float: right;
        width: 29%;
        overflow: auto;
      }

	#slide-submenu{
  background: rgba(0, 0, 0, 0.45);
  display: inline-block;
  padding: 0 8px;
  border-radius: 4px;
  cursor: pointer;
}

</style> 
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

      <a class="navbar-brand" href="#">Education/Admission Related Activity</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">

 <li class="active"><a href="index.php">Home</a></li>
        <li><a href="about.php"><b>About</b></a></li>        
        <li><a href="contact.php"><b>Contact</b></a></li>
      </ul>
    </div>
  </div>
</nav>

<body>


<div class="container-fluid" style="padding-left:0px;padding-right:0px;">
<div class="well well-sm" style="background: url(static/img/pinlayer2.png),url(static/img/pinlayer1.png); background-repeat: no-repeat; background-color: #ffcccc; padding-top:0px; margin-bottom: 0px"> 
  
  <form class="form-inline">
   <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active" ><button class="navbar-toggle collapse in" data-toggle="collapse" id="menu-toggle-2">clickpanel</button></li>
          </ul>
      </div><!-- bs-example-navbar-collapse-1 -->
	<center>
      <select class="form-control" id="city" style="width : 200px;">
        <option value="">Select City</option>
        <option value="Pune">Pune</option>
        <option value="Mumbai">Mumbai</option>
        <option value="Delhi">Delhi</option>
        <option value="Allahabad">Allahabad</option>
      </select>
   <br><br>
   <label for="colleges">Direction: </label> 	
   <input id="start" type="text" size="30">    
    <select class="form-control" id="colleges" style="width : 300px;">
	<option value="">  Select Collages</option>
    </select>
	</center>
  </form>
</div>

     
      
    
   <!-- </nav>-->
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav nav-pills nav-stacked" id="menu">
 
                <!--<li class="active">
                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-dashboard fa-stack-1x "></i></span>Colleges</a>
                </li>-->
		<span href="#" class="list-group-item active">
            			Colleges
            			<span class="pull-right" id="slide-submenu" id="menu-toggle-2">
                		<i class="fa fa-times"></i>
				
            			</span>
        			</span>
		
		<div class="panel-group" id="accordion">
                
		</div>
            </ul>
        </div><!-- /#sidebar-wrapper -->


        <!-- Page Content -->
<div id="page-content-wrapper" style="padding-top:0px; padding-left:0px;">
		                
	<div class="container-fluid text-center" style="padding-left:0px;"> 
	<script src="static/js/sidebar_menu.js"></script>   
        <div id="right-panel"></div>
  	<div id = "sample" ></div>
	<script src="static/js/Mapster.js"></script>
	<script src="static/js/map-options.js"></script>
	
	<script>

	(function(window,google,mapster){
 
    var options = mapster.MAP_OPTIONS;
    var elements = document.getElementById('sample');
    var map = mapster.create(elements,options);
    map.zoom(12);
    var directionsDisplay = new google.maps.DirectionsRenderer;
    var directionsService = new google.maps.DirectionsService;
    directionsDisplay.setMap(map.gMap);
    directionsDisplay.setPanel(document.getElementById('right-panel'));

    
    var i =0;
    
    var service = new google.maps.places.PlacesService(map.gMap);
    
    var onChangeHandler = function() {
           myfun();
    };
    document.getElementById('city').addEventListener('change', onChangeHandler);
   
    
    function myfun(){
    	var cityname = document.getElementById('city').value;
	var i = 1;
    	if (cityname == 'Pune')
    	{	
            var size = <?php include("punecollen.php")?>;
	    var Punecollege = <?php include("punecol.php")?>;
            var jj=0;
	    map.deleteMarkers();
            var id = document.getElementById("accordion");
            var data = '';
	    for (jj=0;jj<size;jj++){
		mycityMarker(Punecollege[jj].place_id,jj);	
                map.zoom(11);
		data += '<div class="panel panel-default">'+
      '<div class="panel-heading">'+
        '<h4 class="panel-title">'+
          '<a data-toggle="collapse" data-parent="#accordion" href="#collapse'+jj+'">'+Punecollege[jj].name +'</a>'+
        '</h4>'+
      '</div>'+
	'<div id="collapse'+jj+'" class="panel-collapse collapse">'+
        '<div class="panel-body">'+'<b>Rank :</b>'+Punecollege[jj].ranking + '<br>' +'<b>City :</b>' + Punecollege[jj].city + '<br>'+
'<b>Pincode: </b>' + Punecollege[jj].pincode + '<br>' + '<b>Email: </b>'+Punecollege[jj].email +'<br>'+ '<b>website: </b>'+ 
Punecollege[jj].website + '<br>'+ '<b>Description: <b>'+Punecollege[jj].description +'</div></div></div>';

		}
	
               id.innerHTML = data;

	}
	
	else if (cityname == "Mumbai")
    	{
	
	    var size = <?php include("mumbaicollen.php")?>;
	    var mumbaicollege = <?php include("mumbaicol.php")?>;
            var jj;
            var id = document.getElementById("accordion");
            var data = '';
	    map.deleteMarkers();
	    for (jj=0;jj<size;jj++){
		mycityMarker(mumbaicollege[jj].place_id,jj);	
                map.zoom(11);
		data += '<div class="panel panel-default">'+
      '<div class="panel-heading">'+
        '<h4 class="panel-title">'+
          '<a data-toggle="collapse" data-parent="#accordion" href="#collapse'+jj+'">'+mumbaicollege[jj].name +'</a>'+
        '</h4>'+
      '</div>'+
	'<div id="collapse'+jj+'" class="panel-collapse collapse">'+
        '<div class="panel-body">'+'<b>Rank :</b>'+mumbaicollege[jj].ranking + '<br>' +'<b>City :</b>' + mumbaicollege[jj].city + '<br>'+
'<b>Pincode: </b>' + mumbaicollege[jj].pincode + '<br>' + '<b>Email: </b>'+mumbaicollege[jj].email +'<br>'+ '<b>website: </b>'+ 
mumbaicollege[jj].website + '<br>'+ '<b>Description: <b>'+mumbaicollege[jj].description +'</div></div></div>';


		}
		id.innerHTML = data;
    	}
	
	else if (cityname == "Delhi")
    	{
	
	    var size = <?php include("delhicollen.php")?>;
	    var delhicollege = <?php include("delhicol.php")?>;
            var jj;
	    var id = document.getElementById("accordion");
            var data = '';
	    map.deleteMarkers();
	    for (jj=0;jj<size;jj++){
		mycityMarker(delhicollege[jj].place_id,jj);	
                map.zoom(11);
		data += '<div class="panel panel-default">'+
      '<div class="panel-heading">'+
        '<h4 class="panel-title">'+
          '<a data-toggle="collapse" data-parent="#accordion" href="#collapse'+jj+'">'+delhicollege[jj].name +'</a>'+
        '</h4>'+
      '</div>'+
	'<div id="collapse'+jj+'" class="panel-collapse collapse">'+
        '<div class="panel-body">'+'<b>Rank :</b>'+delhicollege[jj].ranking + '<br>' +'<b>City :</b>' + delhicollege[jj].city + '<br>'+
'<b>Pincode: </b>' + delhicollege[jj].pincode + '<br>' + '<b>Email: </b>'+delhicollege[jj].email +'<br>'+ '<b>website: </b>'+ 
delhicollege[jj].website + '<br>'+ '<b>Description: <b>'+delhicollege[jj].description +'</div></div></div>';


		}
		id.innerHTML = data;
    	}

	else if (cityname == "Allahabad")
    	{
	
	    var size = <?php include("allahabadcollen.php")?>;
	    var allahabadcollege = <?php include("allahabadcol.php")?>;
            var jj;
            var id = document.getElementById("accordion");
            var data = '';
	    map.deleteMarkers();
	    for (jj=0;jj<size;jj++){
		mycityMarker(allahabadcollege[jj].place_id,jj);	
                map.zoom(11);
		data += '<div class="panel panel-default">'+
      '<div class="panel-heading">'+
        '<h4 class="panel-title">'+
          '<a data-toggle="collapse" data-parent="#accordion" href="#collapse'+jj+'">'+allahabadcollege[jj].name +'</a>'+
        '</h4>'+
      '</div>'+
	'<div id="collapse'+jj+'" class="panel-collapse collapse">'+
        '<div class="panel-body">'+'<b>Rank :</b>'+allahabadcollege[jj].ranking + '<br>' +'<b>City :</b>' + allahabadcollege[jj].city + '<br>'+
'<b>Pincode: </b>' + allahabadcollege[jj].pincode + '<br>' + '<b>Email: </b>'+allahabadcollege[jj].email +'<br>'+ '<b>website: </b>'+ 
allahabadcollege[jj].website + '<br>'+ '<b>Description: <b>'+allahabadcollege[jj].description +'</div></div></div>';


		}
		id.innerHTML = data;
    	}

	}
    	  

    function mycityMarker(placeid,i){
	service.getDetails({
	    placeId: placeid
	}, function(place, status) {
	    if (status === google.maps.places.PlacesServiceStatus.OK) {
		
		map.gMap.setCenter(place.geometry.location);
		//var photos = place.photos;
		var marker = map.addMarker({
    			    position: place.geometry.location,
    			    content: '<div><strong>' + place.name + '</strong><br>' + '<strong>Admission Start and End date</strong>'+'<br>' +
		 			  place.formatted_address + '</div>' 
    			});
		
	    
	   	 }
	    document.getElementById("colleges").options[i]=new Option(place.name+" "+place.formatted_address,place.name+" "+place.formatted_address);
	    
	});
	
    }
    var input = document.getElementById('start');
    var autocomplete = new google.maps.places.Autocomplete(input);
    autocomplete.bindTo('bounds', map.gMap);
    var onChangeHandler = function() {
          calculateAndDisplayRoute(directionsService, directionsDisplay);
        };
    document.getElementById('start').addEventListener('change', onChangeHandler);
    document.getElementById('colleges').addEventListener('change', onChangeHandler);

    function calculateAndDisplayRoute(directionsService, directionsDisplay) {
        var start = document.getElementById('start').value;
        var end = document.getElementById('colleges').value;
        directionsService.route({
          origin: start,
          destination: end,
          travelMode: google.maps.TravelMode.DRIVING
        }, function(response, status) {
          if (status === google.maps.DirectionsStatus.OK) {
            directionsDisplay.setDirections(response);
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      }


}(window,google,window.Mapster || (window.Mapster = {})));

	</script>
	
  	</div> 

	<footer class="container-fluid text-center">
  <p>@copywrite pune,India saurabh.kesarwani@gmail.com</p>
</footer>
</div>
        <!-- /#page-content-wrapper -->
   
    <!-- /#wrapper -->
</div>

    <!-- jQuery -->
   
</body>
</html>

