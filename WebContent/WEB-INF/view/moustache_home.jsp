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
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Mousctache.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.1.3/mustache.js"></script>
   <script type="text/javascript">
   function painthtml()
   { 
	  var data = {first_name: "John", last_name:"Smith", major:"",cohort:""};
       var tpl = $('#profile-preview-template').html();
       var html = Mustache.render(tpl, data);
   	   $('#testArea').html(html);
   }
   </script> 
    
  </head>
  <body style="background:#DEECDA">
  
        <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container" style="height:100px;">
					<div>  
					  <h1>Aristaste</h1> 
					  <p> Best Food Experience </p> 
					  <button class="btn btn-primary login">Login / SignUp</button>
					  	<button class="btn btn-primary btn-sm checkout">Checkout
					  	<span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;<label id="checkoutbadge" class="badge"></label>
					  	</button>
        			</div>
        </div>
    </nav>
  
  
  
       <div class="container" style="height:700px;"	>
         <!--  <img src="images/food1.jpg" alt=""> -->
             <!--  <h1 style="color:black;">Aristast</h1> 
              <h3 style="color:black;">Best Food Experience</h3> -->
              <div class="bckimage" >
             <!--  <div class="jumbotron"> -->
            <!--  <div style="height:100%;" margin-top:2%;">
				  <h1>Aristaste</h1>
				  <p><strong>Best Food Experience</strong></p>
			 </div>	  --> 
              
			<!-- 	  <button class="btn btn-primary login">Login/SignUp</button> -->
                    <form class="form-horizontal" style="padding-top: 50%; padding-left:10%;padding-right:10%; padding-bottom:4%;">
                    <div class="well well-sm">
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
					    	<a href="/walkwithme/restaurants" class="btn btn-primary goButton">Go</a>
						</div>
						<div class="col-md-3" style="padding-top:1%">
					    	<!-- <button type="submit" class="btn btn-success goButton">Quick Delivery</button> -->
					    	 <a class="btn btn-primary" href="/walkwithme/quickdelivery">Quick Delivery</a>
						</div>
					  </div>
					  
					 <!--  <div>
					  		 <span><a href="/walkwithme/quickdelivery"><strong>Quick Delivery</strong></a></span> 
					  </div> -->
					  </div>
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
        	 
        	 <div id="testArea">
        	 </div>
        	 
        </div> <!-- main container -->
        
        
        
        <!-- test code to be removed -->
        <script id="profile-preview-template" type="text/template">
 		<div class="col-sm-3">
        <a style="display:block" data-toggle="modal" data-target="#myModal">
            <div class="profile-preview">
                <img class="img-responsive img-circle center-block" width="200px" src="{{img_url}}" alt="Photo of {{first_name}} {{last_name}}" />
                <h1>{{first_name}} {{last_name}}</h1>
                <h2 class="text-muted">{{major}}</h2>
                <h3 class="text-muted">Cohort {{cohort}}</h3>
            </div>
        </a>
   	 	</div>
    	 </script>
    	 
    	 <script id="modal-template" type="text/template">
<div id="myModal">
    <div class="contianer">
        <div class="row">
            <div class="col-sm-6">
                <img width="300px" src="{{img_url}}" alt="Profile of {{first_name}} {{last_name}}" class=" img-circle img-responsive">
            </div>
            <div class="col-sm-6">
                <h1>{{first_name}} {{last_name}}</h1>
                <h2>{{major}}</h2>
                <h3>{{cohort}}</h3>
                <h4>{{home_town}}</h4>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-6">
                <h1>About {{first_name}}</h1>
            </div>
            <div class="col-xs-6">
                <h3>Status:{{status}}</h3>
            </div>
        </div>
        <div class = "row">
            <p>{{bio}}</p>
        </div>
    </div>            
    <a href="{{linkedin}}">LinkedIn &rarr;</a>            
</div>

</script>
    	
    	
	 
	<div id="myModal" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close glyphicon glyphicon-remove" data-dismiss="modal"></button>
                    <h3 class="modal-title">BluLocker</h3>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-md-offset-2 col-sm-offset-2 col-xs-offset-1">
                                <img src="" alt="BluLocker" class="img-responsive">
                            </div>
                        </div>
                    </div>

                    <p>...</p>

                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
        <!-- end test code to be removed -->
        
      
        
        
        
        
  
    <script>
    painthtml();
  /*   
    $('select').change(function() {
    	alert('in seelct');
    	 if ($(this).children('option:first-child').is(':selected')) {
    	   $(this).addClass('placeholder');
    	 } else {
    	  $(this).removeClass('placeholder');
    	 }
     }); */
    
    </script>  
  </body>
</html>