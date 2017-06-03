<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Aristaste - Quick Delivery</title>
    
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
    
    function getDish()
    {
    	document.getElementById('dishboard').style.display = 'block';
    }
    
    function showDishDetails()
    {
    	$('#dishboard').toggle();
    	document.getElementById('dishrestaurants').style.display = 'block';
    	document.getElementById('dishrestaurants1').style.display = 'block';
    	document.getElementById('divshowdishboard').style.display = 'block';
    	
    }
    
    function showDishBoard()
    {
    	$('#dishboard').toggle();
    	document.getElementById('divshowdishboard').style.display = 'none';
    	document.getElementById('dishrestaurants').style.display = 'none';
    	document.getElementById('dishrestaurants1').style.display = 'none';
    	document.getElementById('divMap').style.display = 'none';
    	
    }
    
    function showMap()
    {
    	document.getElementById('divMap').style.display = 'block';
    }
    
    
    
    </script>

</head>
<body>
   
      <div class="container" >
      
     		<div style="height:100%;" margin-top:2%;">
				  <h1>Aristaste</h1>
				  <p><strong>Best Food Experience</strong></p>
			 </div>	  
			<button class="btn btn-primary login">Login/SignUp</button>
			
		  	
				  
				  
          <div class="row">
          	<div class="col-md-12">
          	     <div class="form-group">
					    <!-- <div class="col-md-5"  style="padding-top:1%">
					    	<input class="form-control " type="text"  id="exampleInputName2" placeholder="City/State/Zip">
					    </div> -->
					    <div class="col-md-2" style="padding-top:1%">
					   	 Please select the dish
					    </div>
					    <div class="col-md-7" style="padding-top:1%">
						    <select class="form-control">
						    <option selected disabled>Please enter Dish</option>
						    <option> Chicken Biryani </option>
						    <option> Pizza</option>
						    <option> Chicken Kabab </option>
						    <option> Dosa</option>
						    </select>
						</div>
						<div class="col-md-3" style="padding-top:1%">
					    	<button type="submit" class="btn btn-success goButton" onclick="getDish();">Go</button>
						</div>
					  </div>
          	</div>
          </div>
          <!--  Show Map -->
          <div id="divMap" class="row" style="display:none;">
             <div class="col-md-10" style="margin: 10px 10px 10px 10px;" >
                <img class="img-responsive" src="images/mapImage.jpg"></img>
             </div>
          </div>
          
          <div id="divshowdishboard" class="row divBtn" style="display:none">
            <div class="col-md-4">
             <button class="btn btn-success showdishButton" onclick="showDishBoard();"><strong>Select Dish</strong></button>
             <button class="btn btn-success showdishButton" onclick="showMap();"><strong>Show Map</strong></button>
             </div>
			 <div class="col-md-8">
	             <span>
             	 <strong>Following is the list of restaurants for "Dosa"</strong>
	             </span>
			 </div>
          </div>
          
	      <div id="dishboard" class="container-fluid" style="margin-top:5px;display:none">
	      <div style="max-height:10%">
			      <div class="row" style="margin-left:10px;margin-bottom:10px;margin-top:10px;">
				     <strong> Please click on the dish from dish board </strong>
			      </div>
					<div class="col-md-6" style="background:#E2E0DC;">
								 <div class="row" style="margin-top:5px;">
								    <div class="col-sm-3 col-xs-3"><a id="dish1" onclick="showDishDetails();"><img class="img-responsive" src="images/dosa1.jpg" alt="dosa1"></a></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg"></div>
								 </div>
								 <div class="row" style="margin-top:5px;">
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa5.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa6.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg"></div>
								 </div>
								  <div class="row" style="margin-top:5px;">
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa1.jpg" alt="dosa1"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg"></div>
								 </div>
								 <div class="row" style="margin-top:5px;">
								    <div class="col-sm-3 col-xs-3"><a onclick="showDishDetails();"><img class="img-responsive" src="images/dosa1.jpg" alt="dosa1"></a></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg"></div>
								 </div>
								  <div class="row" style="margin-top:5px;">
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa1.jpg" alt="dosa1"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg"></div>
								    <div class="col-sm-3 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg"></div>
								 </div>
					</div>
					<div id="dishdesc" class="col-md-4" style="background:#E2E0DC;">
					</div>
					
			</div>
	      </div>
	      <!-- this section is for laptop and other bitg screens -->
	      <div  class="hiddensection">
			<div id="dishrestaurants" style="display:none;">
				 <div >
				     <div class="row dishrestaurants" style="background:#E2E0DC;">
					    <div class="col-sm-3 col-xs-2"><span data-toggle="tooltip" data-placement="top" title="Restaurant" class="glyphicon glyphicon-cutlery"></span></div>
					    <div class="col-sm-3 col-xs-3"><span data-toggle="tooltip" data-placement="top" title="Ratings" class="glyphicon glyphicon-star"></span></div>
					    <div class="col-sm-1 col-xs-1"><span data-toggle="tooltip" data-placement="top" title="Min Delivery" class="glyphicon glyphicon-usd"></span></div>
					    <div class="col-sm-1 col-xs-1"><span data-toggle="tooltip" data-placement="top" title="Min Delivery Time" class="glyphicon glyphicon-time"></span></div>
					    <div class="col-sm-1 col-xs-1"><span data-toggle="tooltip" data-placement="top" title="Delivery Charges" class="glyphicon glyphicon-home"></span></div>
					    <div class="col-sm-1 col-xs-1"><span data-toggle="tooltip" data-placement="top" title="Price" class="glyphicon glyphicon-usd"></span></div>
					    <div class="col-sm-2 col-xs-2"><span data-toggle="tooltip" data-placement="top" title="Quantity" class="glyphicon glyphicon-plus"></span></div>
					 </div>
				  	 <div class="row dishrestaurants">
					    <div class="col-sm-3 col-xs-2"><img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg"></div>
					    <div class="col-sm-3 col-xs-3">
					    	Taste of India <br><img src="images/star.jpg"><img src="images/star.jpg"><img src="images/star.jpg"><img src="images/star.jpg">
					    	<br> 5517 Roosevelt Way NE <br>Seattle, WA 98105
					    	<br>(206) 528-1575</div>
					    <div class="col-sm-1 col-xs-1" style="">$25</div>					    
					    <div class="col-sm-1 col-xs-1">20</div>
					    <div class="col-sm-1 col-xs-1">$2</div>
					    <div class="col-sm-1 col-xs-1">$10</div>
					    <div class="col-sm-2 col-xs-2"><input type="text" style="width:25px;"></div>
					 </div>
					  <div class="row dishrestaurants">
					    <div class="col-sm-3 col-xs-2"><img class="img-responsive" style="min-width:55px;" src="images/dosa1.jpg"></div>
					    <div class="col-sm-3 col-xs-3">Kastoori Grill<br><img src="images/star.jpg"><img src="images/star.jpg"><img src="images/star.jpg"><img src="images/star.jpg"><img src="images/star.jpg">
					    <br>94 Stewart St<br>Seattle, WA 98101<br>(206) 441-5456</div>
					    <div class="col-sm-1 col-xs-1" style="">$20</div>					    
					    <div class="col-sm-1 col-xs-1">15</div>
					    <div class="col-sm-1 col-xs-1">Free</div>
					    <div class="col-sm-1 col-xs-1">$12</div>
					    <div class="col-sm-2 col-xs-2"><input type="text" style="width:25px;"></div>
					    
					 </div>
				 </div>
			</div>
			 </div>
			
			<!-- this section is for mobile -->
			 <div class="hiddensection-mobile">
			<div id="dishrestaurants1" style="display:none;">
				  	 <div class="row dishrestaurants">
					    <div class="col-xs-4 restCol"><img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg">
					    <span class="small">Taste of India</span>
					    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
					    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
					    </div>
					    <div class="col-xs-5 restCol"><span class="xsmall">5517 Roosevelt Way NE <br>Seattle, WA 98105 <br>(206) 528-1575</span></div>
					    <div class="col-xs-3 restCol" >
					    	<span class="xxsmall">Min Delivery $25<br>Wait time 20 mins<br>Del. $2<br><strong>Price $12</strong>
					    		<br><strong>Qty.</strong> <input type="text" style="width:25px;">
					    	</span>
					    </div>					    
					    
					 </div>
					 <div class="row dishrestaurants">
					    <div class="col-xs-4 restCol"><img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg">
					    <span class="small">Bombay Grill</span>
					    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
					    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
					    </div>
					    <div class="col-xs-5 restCol"><span class="xsmall">Main Street<br>Seattle, WA 98105 <br>(206) 500-1575</span></div>
					    <div class="col-xs-3 restCol" >
					    	<span class="xxsmall">Min Delivery $20<br>Wait time 30 mins<br>Del. $3<br><strong>Price $10</strong>
					    		<br><strong>Qty.</strong> <input type="text" style="width:25px;">
					    	</span>
					    </div>					    
					    
					 </div>
					 <div class="row dishrestaurants">
					    <div class="col-xs-4 restCol"><img class="img-responsive" style="min-width:55px;" src="images/dosa4.jpg">
					    <span class="small">Kastoori Grill</span>
					    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
					    <img src="images/starsmall.jpg">
					    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
					    </div>
					    <div class="col-xs-5 restCol"><span class="xsmall">94 Stewart St<br>Seattle, WA 98101<br>(206) 441-5456</span></div>
					    <div class="col-xs-3 restCol" >
					    	<span class="xxsmall">Min Delivery $15<br>Wait time 25 mins<br>Del. Free<br><strong>Price $8</strong>
					    		<br><strong>Qty.</strong> <input type="text" style="width:25px;">
					    	</span>
					    </div>					    
					    
					 </div>
			</div>
			 
	      
      </div>
      
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    
    <script>
	    $("#dish1").mouseover(function(){
	   	 $("#dishdesc").html('Paper Dosa:<br>' + ' Ingredients: <br>   2 cups short-grain rice.<br> ' + 
						+ '½ cup urad dal (split husked black lentils)<br>' 	+'1 teaspoon fenugreek seeds.<br> ' +
						'½ teaspoon salt.<br> 	'+'					Vegetable oil, for frying.<br>');
	    });
	     
       $("#dish1").mouseout(function(){
      	 $("#dishdesc").html('');
       });
    </script>

</body>
</html>