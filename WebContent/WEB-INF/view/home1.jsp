<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Walk with me</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
  </head>
  <body>
       <div class="container" >
         <!--  <img src="images/food1.jpg" alt=""> -->
             <!--  <h1 style="color:black;">Aristast</h1> 
              <h3 style="color:black;">Best Food Experience</h3> -->
              <div class="bckimage">
             <!--  <div class="jumbotron"> -->
             <div style="height:100%;" margin-top:2%;">
				  <h1>Aristaste</h1>
				  <p><strong>Best Food Experience</strong></p>
			 </div>	  
              
				  <button class="btn btn-primary login">Login/SignUp</button>
                    <form class="form-horizontal" style="padding-top: 40%; padding-left:10%;padding-right:10%;">
					 <!--  <p><a class="btn btn-primary" href="#" role="button">Learn more</a></p> -->
	                   <div>
	                     <label class="radio-inline">
							  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="Delivery">
							  <strong>Delivery</strong> 
							</label>
							<label class="radio-inline" style="padding-left:5%">
							  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="Pickup"> 
							  <strong>PickUp</strong>
						  </label>
	                   </div>
	                  <div class="form-group">
					   <!--  <label for="exampleInputName2">Name</label> -->
					   <div class="col-sm-4"  style="padding-top:1%">
					    	<input class="form-control " type="text"  id="exampleInputName2" placeholder="City/State/Zip">
					    </div>
					    <div class="col-sm-4" style="padding-top:1%">
						    <select class="form-control">
						    <option selected disabled>Please select Cuisine/Dish/Restaurant</option>
						    <option> Biryani House </option>
						    <option> Pizzeria </option>
						    </select>
						</div>
						<div class="col-md-1" style="padding-top:1%">
					    	<button type="submit" class="btn btn-success goButton">Go</button>
						</div>
						<div class="col-md-3" style="padding-top:1%">
					    	<!-- <button type="submit" class="btn btn-success goButton">Quick Delivery</button> -->
					    	 <a class="btn btn-success" href="/walkwithme/quickdelivery">Quick Delivery</a>
						</div>
					  </div>
					  
					 <!--  <div>
					  		 <span><a href="/walkwithme/quickdelivery"><strong>Quick Delivery</strong></a></span> 
					  </div> -->
	              </form>  
				  
	               <!--  <div style="padding-top: 40%;" class="input-group">
	                <p class="lead">Pasta at its best from one of the finest cuisines.</p>
	                <a class="btn btn-large btn-primary" href="#">Sign up today</a>
	                <input class="form-control" style="width:50%;" name="city" placeholder="city/state/zip">
	                <input class="form-control" style="width:50%;" name="restaurant" placeholder="cuisine/restaurant">
	                <button class="btn btn-large btn-primary">Go</button>
	              </div>   -->
             <!--  </div> -->
        	 </div>
        </div> <!-- main container -->
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script>
    
    $('select').change(function() {
    	alert('in seelct');
    	 if ($(this).children('option:first-child').is(':selected')) {
    	   $(this).addClass('placeholder');
    	 } else {
    	  $(this).removeClass('placeholder');
    	 }
     });
    
    </script>
  </body>
</html>