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
    
    var numberofitems = 0 ;
    
    function getDish()
    {
    	document.getElementById('dishboard').style.display = 'block';
    	document.getElementById('dishrestaurants').style.display = 'none';
    /* 	document.getElementById('dishrestaurants1').style.display = 'none'; */
    	document.getElementById('divMap').style.display = 'none';
    }
    
    function showDishDetails()
    {
    	//$('#dishboard').toggle();
   	document.getElementById('dishrestaurants').style.display = 'block';
    	/* document.getElementById('dishrestaurants1').style.display = 'block'; */
    	/* document.getElementById('divshowdishboard').style.display = 'block'; */
    	
    	/* 
    		Added for accordion example -remove after testing:
    	*/
    
    	
    }
    
    function showhide()
    {
    	
    }
    
    function showDishBoard()
    {
    	$('#dishboard').toggle();
    	/* document.getElementById('divshowdishboard').style.display = 'none'; */
    	document.getElementById('dishrestaurants').style.display = 'none';
    	/* document.getElementById('dishrestaurants1').style.display = 'none'; */
    	document.getElementById('divMap').style.display = 'none';
    	
    }
    
    function showMap()
    {
    	//document.getElementById('divMap').style.display = 'block';
    	$('#divMap').toggle();
    	$('#filter').hide();
    }
    
    function toggleFilter()
    {
    	$('#filter').toggle();
    	$('#divMap').hide();
    }
    
    function addtocart(qty)
    {
    	var qty = document.getElementById(qty).value;
    	numberofitems = +numberofitems + +qty;
    	$('#checkoutbadge').text(numberofitems);
    	 
    }
    
    
    </script>

</head>
<body style="background:#DEECDA">

   <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container" style="height:100px;">
					 
					  <h1>Aristaste</h1> 
					  <p> Best Food Experience </p> 
					  <button class="btn btn-primary login">Login / SignUp</button>
					  	<button class="btn btn-primary btn-sm checkout">Checkout
					  	<span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;<label id="checkoutbadge" class="badge"></label>
					  </button>
        			 
        </div>
    </nav>
    
      <div class="container" >
      &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn" href="/walkwithme"><strong>Back to Home </strong> </a>
          <div class="row">
          	<div class="col-md-12">
          	     <div class="form-group">
					    <div class="col-md-7" style="padding-top:1%">
						    <select class="form-control">
						    <option selected disabled>Please enter Dish</option>
						    <option> Chicken Biryani </option>
						    <option> Pizza</option>
						    <option> Chicken Kabab </option>
						    <option> Dosa</option>
						    </select>
						</div>
						 
						<div class="col-md-4" style="padding-top:1%">
					    	<button type="submit" class="btn btn-primary goButton" onclick="getDish();">Go</button>
					    	<button type="submit" class="btn btn-primary btn-sm goButton" onclick="toggleFilter();">Filter</button>
						</div>
					  </div>
          	</div>
          </div>
          
         <!--  <div id="divshowdishboard" class="row divBtn" style="display:none">
            <div class="col-md-4">
             <button class="btn btn-success showdishButton" onclick="showDishBoard();"><strong>Select Dish</strong></button>
             <button class="btn btn-success showdishButton" onclick="showMap();"><strong>Show Map</strong></button>
             </div>
          </div> -->
        
               <div id="filter" class="container" style="margin-top:5px;display:none;">
               		<div class="panel panel-default">
	               		 <div class="panel-heading">
					     	<strong>Selet Filter Criteria</strong> 
					     </div>
					     <div class="panel-body">
								<div class="row">
									<div class="col-md-3" >
										<input type="checkbox">Free Delivery
										<br><input type="checkbox">Free Delivery
										<br><input type="checkbox">Free Delivery
									</div>
									<div class="col-md-3" >
										<input type="checkbox">Delivery
										<br><input type="checkbox">Delivery
										<br><input type="checkbox">Delivery
									</div>
									<div class="col-md-3"  >
										<input type="checkbox">Accepts Coupons
										<br><input type="checkbox">Accepts Coupons
										<br><input type="checkbox">Accepts Coupons
									</div>
									<div class="col-md-3"  >
										<input type="checkbox">Accepts Amex Card
										<br><input type="checkbox">Accepts Amex Card
										<br><input type="checkbox">Accepts Amex Card
									</div>
								</div>
							</div>
						<div class="panel-footer">
								<span style="margin-left: 85%;"><a><Strong>Done/Refresh</Strong></a></span>
						</div>
						
					</div>
               </div> <!-- End of Filter -->
               
               <!--  Show Map -->
		          <div id="divMap" class="row" style="display:none;">
		             <div class="col-md-10" style="margin: 10px 10px 10px 10px;" >
		                <img class="img-responsive" src="images/mapImage.jpg"></img>
		             </div>
		          </div>
               
               
               
               
               <div class="container">
				    <div class="row">
				        <div class="content">
				            <div class="panel-group" id="accordion">
				            
				                <div class="panel panel-default">
				                    <div class="panel-heading">
				                         
				                         <h4 class="panel-title">
					                        <!-- <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> -->
					                        <a onclick="showDishDetails();">
					                          <strong>Dish Types</strong>
					                        </a>
				                      	</h4>
				
				                    </div>
				                    <div id="collapseOne" class="panel-collapse collapse in">
				                    
				                        <div class="panel-body">
				                        
				                            <div  style="padding-right:0px;padding-left:1px;max-width:100%;overflow-x:scroll;"  >
					
							 <table class="table table-striped" border="3">
							 	<tr> 
								<!--  <div class="row" style="margin-top:1px;"> -->
								     <td width="660px">
								    	<a id="dish1" onclick="showDishDetails();">
								    		<!-- <img class="img img-responsive"   src="images/dosa1.jpg" alt="dosa1">Masala Dosa</img> -->
								    		  <img    src="images/dosa1.jpg" alt="dosa1">Masala Dosa</img>  
								    	</a>
									    <!-- <button type="button" style="" class="btn btn-default dishinfo1 glyphicon glyphicon-info-sign">
									    </button> -->
									    <a data-toggle="modal" data-target="#myModal"> 
									    	<span class="dishinfo1 glyphicon glyphicon-info-sign" style="position: relative;"></span> </a>
								    </td><td width="660px">
								    
								   <img  src="images/dosa2.jpg">Paper Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
								     </td> <td width="660px">
								     <img   src="images/dosa3.jpg">Paneer Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									     </td> <td width="660px">
								    <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									     </td> <td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td> <td width="660px">
								      <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td> <td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									     </td><td width="660px">
									 <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td> <td width="660px">
									    <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td> <td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									       </td><td width="660px">
								      <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td><td width="660px">
									       
								      <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td><td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td> <td width="660px">
									 <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									     </td> <td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									     
								<!--  </div> -->
								  </td></tr>
								  <tr> 
								<!--  <div class="row" style="margin-top:1px;"> -->
								     <td width="660px">
								     <img     src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td> <td width="660px">
								      <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td><td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									     </td><td width="660px">
									 <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td><td width="660px">
									    <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td><td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									       </td><td width="660px">
								      
									    <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td><td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									       </td><td width="660px">
								      <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td> <td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									      </td> <td width="660px">
									 <img   src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									     </td> <td width="660px">
								     <img   src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									     
								<!--  </div> -->
								  </td></tr>
								 <!--  <tr><td>
								 <div class="row" style="margin-top:1px;">
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-2 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg">Paneer Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-2 col-xs-3"><img class="img-responsive" src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-2 col-xs-3"><img class="img-responsive" src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
									     <div style="padding-right:0px;padding-left:2px;" class="col-sm-2 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg">Paneer Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-2 col-xs-3"><img class="img-responsive" src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-2 col-xs-3"><img class="img-responsive" src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								 </div>
								  </td></tr><tr><td>
								 <div class="row" style="margin-top:1px;">
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg">Chilli Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa5.jpg">Plain Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa6.jpg">Super Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
									     <div style="padding-right:0px;padding-left:2px;" class="col-sm-2 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg">Paneer Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-2 col-xs-3"><img class="img-responsive" src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-2 col-xs-3"><img class="img-responsive" src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								 </div>
								 </td></tr> -->
								 </table>
					 </div>
				                        
				                        
				                        </div>
				                        
				                    </div>
				                </div>
				                <div class="panel panel-default">
				                    <div class="panel-heading">
				                         <h4 class="panel-title">
							                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
							                  <strong>Mysore Dosa is served at following restaurants:</strong>
							                </a>
							              </h4>
				
				                    </div>
				                    <div id="collapseTwo" class="panel-collapse collapse">
				                        <div class="panel-body">
				                        
				                            <div id="restaurants" class="panel-body">
				  <table class="table  table-striped">
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/mainimage1.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a id="restid1" onclick="openrestmenu('restid1');"><strong>Bamboo Indian Restaurant</strong></a>
							<br>
							 <h6><small>15000 Main Street,
							<br>Bellevue, WA 98007</small></h6>						
							 <div style="display: inline-block;white-space: nowrap;">
								<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							</div>
							&nbsp;&nbsp;(12 Reviews)
						</td>
						
						<td width="18%">
								11:00 am - 3:00 pm<br>
								6:00 pm - 11:00 pm
								Closed
						</td>
						<td width="12%">
								$20<br>
								Min
						</td>
						<td width="12%">
							   No Delivery<br>
							   Pickup only
						</td>
						<td width="14%">
							   15 mins
							   <br>Wait
						</td>
						
						
					</tr>  
					
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/rest/rest1.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a id="restid2" onclick="openrestmenu('restid2');"><strong>Mogambo</strong></a>
							<br>
							15000 Main Street,
							<br>Bellevue, WA 98007							
							<br><div style="display: inline-block;white-space: nowrap;">
								<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							</div>
							&nbsp;&nbsp;(12 Reviews)
						</td>
					<td width="18%">
								11:00 am - 3:00 pm<br>
								6:00 pm - 11:00 pm
								Open Now
						</td>
						<td width="12%">
								$35<br>
								Min
						</td>
						<td width="12%">
							   Free <br>
							   Delivery
						</td>
						<td width="14%">
							   15 mins
							   <br>Wait
						</td>
					</tr>  
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/rest/rest2.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a><strong>P F Changs</strong></a>
							<br>
							15000 Main Street,
							<br>Bellevue, WA 98007							
							<br><div style="display: inline-block;white-space: nowrap;">
								<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							</div>
							&nbsp;&nbsp;(12 Reviews)
						</td>
						<td width="18%">
								11:00 am - 3:00 pm<br>
								6:00 pm - 11:00 pm
								Closed
						</td>
						<td width="12%">
								$20<br>
								Min
						</td>
						<td width="12%">
							   $5 <br>
							   Delivery
						</td>
						<td width="14%">
							   15 mins
							   <br>Wait
						</td>
					</tr> 
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/rest/rest3.jpg" style="height:4%;">
						</td>
						<td width="30%">
						<a><strong>Chingari</strong></a>
							<br>
							15000 Main Street,
							<br>Bellevue, WA 98007							
							<br><div style="display: inline-block;white-space: nowrap;">
								<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							</div>
							&nbsp;&nbsp;(12 Reviews)
						</td>
						<td width="18%">
								11:00 am - 3:00 pm<br>
								6:00 pm - 11:00 pm
						</td>
						<td width="12%">
								$20<br>
								Min
						</td>
						<td width="12%">
							   Free<br>
							   Delivery
						</td>
						<td width="14%">
							   15 mins
							   <br>Wait
						</td>
					</tr> 
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/rest/rest4.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a><strong>Peacock</strong></a>
							<br>
							15000 Main Street,
							<br>Bellevue, WA 98007							
							<br><div style="display: inline-block;white-space: nowrap;">
								<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							</div>
							&nbsp;&nbsp;(12 Reviews)
						</td>
						<td width="18%">
								11:00 am - 3:00 pm<br>
								6:00 pm - 11:00 pm
						</td>
						<td width="12%">
								$20<br>
								Min
						</td>
						<td width="12%">
							   $5 <br>
							   Delivery
						</td>
						<td width="14%">
							   15 mins
							   <br>Wait
						</td>
					</tr> 
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/rest/rest5.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a><strong>Paradise Biryani</strong></a>
							<br>
							15000 Main Street,
							<br>Bellevue, WA 98007							
							<br><div style="display: inline-block;white-space: nowrap;">
								<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							</div>
							&nbsp;&nbsp;(12 Reviews)
						</td>
						<td width="18%">
								11:00 am - 3:00 pm<br>
								6:00 pm - 11:00 pm
						</td>
						<td width="12%">
								$20<br>
								Min
						</td>
						<td width="12%">
							   $5 <br>
							   Delivery
						</td>
						<td width="14%">
							   15 mins
							   <br>Wait
						</td>
					</tr> 
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/rest/rest6.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a><strong>Passage to India</strong></a>
							<br>
							15000 Main Street,
							<br>Bellevue, WA 98007							
							<br><div style="display: inline-block;white-space: nowrap;">
								<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							</div>
							&nbsp;&nbsp;(12 Reviews)
						</td>
						<td width="18%">
								11:00 am - 3:00 pm<br>
								6:00 pm - 11:00 pm
						</td>
						<td width="12%">
								$35<br>
								Min
						</td>
						<td width="12%">
							   $5 <br>
							   Delivery
						</td>
						<td width="14%">
							   15 mins
							   <br>Wait
						</td>
					</tr> 
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/rest/rest2.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a><strong>Rangeela</strong></a>
							<br>
							15000 Main Street,
							<br>Bellevue, WA 98007							
							<br><div style="display: inline-block;white-space: nowrap;">
								<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							</div>
							&nbsp;&nbsp;(12 Reviews)
						</td>
						<td width="18%">
								11:00 am - 3:00 pm<br>
								6:00 pm - 11:00 pm
						</td>
						<td width="12%">
								$35<br>
								Min
						</td>
						<td width="12%">
							   Free<br>
							   Delivery
						</td>
						<td width="14%">
							   15 mins
							   <br>Wait
						</td>
					</tr> 
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/rest/rest3.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a><strong>Mumbai</strong><a>
							<br>
							15000 Main Street,
							<br>Bellevue, WA 98007							
							<br><div style="display: inline-block;white-space: nowrap;">
								<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							</div>
							&nbsp;&nbsp;(12 Reviews)
						</td>
						<td width="18%">
								11:00 am - 3:00 pm<br>
								6:00 pm - 11:00 pm
						</td>
						<td width="12%">
								$20<br>
								Min
						</td>
						<td width="12%">
							   Free<br>
							   Delivery
						</td>
						<td width="14%">
							   15 mins
							   <br>Wait
						</td>
					</tr> 
					 
					 
					</table>
		    	  </div> 
				                            
				                        </div>
				                    </div>
				                </div>
				                
				            </div>
				        </div>
				    </div>
				</div>
               
               
               
               
               
               
               

		      <div id="dishboard" class="container" style="margin-top:5px;display:none">
			      <!-- <div class="row" style="margin-left:10px;margin-bottom:10px;margin-top:10px;">
				     <strong> Please click on the dish from dish board </strong>
			      </div> -->
			    <div class="panel panel-default">
			     <div class="panel-heading">
			     	<strong>Click on the dish below to find the restaurants:</strong>
			             <a onclick="showMap();" style="float:right;"><strong>Show Map</strong></a>
			     </div>
				  <div class="panel-body" style="max-height:720px;overflow-y:scroll;">
				  
					<div class="col-md-4" style="padding-right:0px;padding-left:1px;">
					
					 <table class="table  table-striped"><tr><td>
								 <div class="row" style="margin-top:1px;">
								    <div class="col-sm-4 col-xs-3 imagewrap" style="padding-right:0px;padding-left:2px;">
								    	<a id="dish1" onclick="showDishDetails();" >
								    		<img class="img-responsive" src="images/dosa1.jpg" alt="dosa1">Masala Dosa</img>
								    	</a>
								    	 
									    <!-- <button type="button" style="" class="btn btn-default dishinfo1 glyphicon glyphicon-info-sign">
									    </button> -->
									    <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
								    </div>
								    
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa2.jpg">Paper Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
								    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg">Spring Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									 </div>
								 </div>
								  </td></tr><tr><td>
								 <div class="row" style="margin-top:1px;">
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg">Paneer Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa5.jpg">Chicken Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa6.jpg">Mysore Masala Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								 </div>
								  </td></tr><tr><td>
								 <div class="row" style="margin-top:1px;">
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa3.jpg">Chilli Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa5.jpg">Plain Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								    <div style="padding-right:0px;padding-left:2px;" class="col-sm-4 col-xs-3"><img class="img-responsive" src="images/dosa6.jpg">Super Dosa
								     <a data-toggle="modal" data-target="#myModal"> <span class="dishinfo1 glyphicon glyphicon-info-sign"></span> </a>
									    </div>
								 </div>
								 </td></tr></table>
					 </div>
					 
					 <div id="dishrestaurants" class="col-md-8 hiddensection" style="padding-right:0px;display:none;">
					     <table class="table  table-striped">
					     <tr><th>
					      List of restaurants for "Masala Dosa". Input quantity and click 'Add to cart'.
					     </th></tr>
					     
					     <tr><td>
					  	  <div class="row dishrestaurants">
							    <div style=" padding-bottom:1px;" class="col-xs-6 restCol">
							    <!-- <img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg"> -->
							    <strong>  Taste of India </strong><br>
							    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
							    <br> <span class="xsmall">5517 Roosevelt Way NE <br>Seattle, WA 98105 <br>(206) 528-1575</span> 
							    <br>  Open 9:00 am - 10:00 pm  
							   
							    </div>
							    <div class="col-xs-6 restCol" >
							    	<span class="xxsmall">Min Delivery $25<br>ETA 20 mins<br>Del. $2<br><strong>Price $12</strong>
							    		<br><strong>Qty.</strong> <input id="qty1" type="text" style="width:45px;padding: 1px 1px 1px 1px;">
							    		 <br><a onclick="addtocart('qty1');"><strong>Add to cart</strong><span class="glyphicon glyphicon-shopping-cart"></span></a>
							    	</span>
							    </div>					    
						    
						 </div>
						 </td></tr><tr><td>
						 <div class="row dishrestaurants">
							    <div  style=" padding-bottom:1px;" class="col-xs-6 restCol">
							    <!-- <img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg"> -->
							    <strong> Bombay Grill  </strong><br>
							    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
							      <span class="xsmall">Main Street<br>Seattle, WA 98105 <br>(206) 500-1575</span> 
							    <br> Open 9:00 am - 10:00 pm 
							  
							    </div>
							    <div class="col-xs-6 restCol" >
							    	<span class="xxsmall">Min Delivery $20<br>ETA 30 mins<br>Del. $3<br><strong>Price $10</strong>
							    		<br><strong>Qty.</strong> <input id="qty2" type="text" style="width:45px;padding:1px 1px 1px 1px;">
							    		 <br><a onclick="addtocart('qty2');"><strong>Add to cart</strong><span class="glyphicon glyphicon-shopping-cart"></span></a>
							    	</span>
							    </div>					    
						 	</div>
						 	
						 	
						 	
						 	</td></tr><tr><td>
						 <div class="row dishrestaurants">
							    <div  style=" padding-bottom:1px;" class="col-xs-6 restCol">
							    <!-- <img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg"> -->
							    <strong> Bombay Grill  </strong><br>
							    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
							      <span class="xsmall">Main Street<br>Seattle, WA 98105 <br>(206) 500-1575</span> 
							    <br> Open 9:00 am - 10:00 pm 
							  
							    </div>
							    <div class="col-xs-6 restCol" >
							    	<span class="xxsmall">Min Delivery $20<br>ETA 30 mins<br>Del. $3<br><strong>Price $10</strong>
							    		<br><strong>Qty.</strong> <input id="qty2" type="text" style="width:45px;padding:1px 1px 1px 1px;">
							    		 <br><a onclick="addtocart('qty2');"><strong>Add to cart</strong><span class="glyphicon glyphicon-shopping-cart"></span></a>
							    	</span>
							    </div>					    
						 	</div></td></tr><tr><td>
						 <div class="row dishrestaurants">
							    <div  style=" padding-bottom:1px;" class="col-xs-6 restCol">
							    <!-- <img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg"> -->
							    <strong> Bombay Grill  </strong><br>
							    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
							      <span class="xsmall">Main Street<br>Seattle, WA 98105 <br>(206) 500-1575</span> 
							    <br> Open 9:00 am - 10:00 pm 
							  
							    </div>
							    <div class="col-xs-6 restCol" >
							    	<span class="xxsmall">Min Delivery $20<br>ETA 30 mins<br>Del. $3<br><strong>Price $10</strong>
							    		<br><strong>Qty.</strong> <input id="qty2" type="text" style="width:45px;padding:1px 1px 1px 1px;">
							    		 <br><a onclick="addtocart('qty2');"><strong>Add to cart</strong><span class="glyphicon glyphicon-shopping-cart"></span></a>
							    	</span>
							    </div>					    
						 	</div>
						 	</td></tr><tr><td>
						 <div class="row dishrestaurants">
							    <div  style=" padding-bottom:1px;" class="col-xs-6 restCol">
							    <!-- <img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg"> -->
							    <strong> Bombay Grill  </strong><br>
							    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
							      <span class="xsmall">Main Street<br>Seattle, WA 98105 <br>(206) 500-1575</span> 
							    <br> Open 9:00 am - 10:00 pm 
							  
							    </div>
							    <div class="col-xs-6 restCol" >
							    	<span class="xxsmall">Min Delivery $20<br>ETA 30 mins<br>Del. $3<br><strong>Price $10</strong>
							    		<br><strong>Qty.</strong> <input id="qty2" type="text" style="width:45px;padding:1px 1px 1px 1px;">
							    		 <br><a onclick="addtocart('qty2');"><strong>Add to cart</strong><span class="glyphicon glyphicon-shopping-cart"></span></a>
							    	</span>
							    </div>					    
						 	</div></td></tr><tr><td>
						 <div class="row dishrestaurants">
							    <div  style=" padding-bottom:1px;" class="col-xs-6 restCol">
							    <!-- <img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg"> -->
							    <strong> Bombay Grill  </strong><br>
							    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
							    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
							      <span class="xsmall">Main Street<br>Seattle, WA 98105 <br>(206) 500-1575</span> 
							    <br> Open 9:00 am - 10:00 pm 
							  
							    </div>
							    <div class="col-xs-6 restCol" >
							    	<span class="xxsmall">Min Delivery $20<br>ETA 30 mins<br>Del. $3<br><strong>Price $10</strong>
							    		<br><strong>Qty.</strong> <input id="qty2" type="text" style="width:45px;padding:1px 1px 1px 1px;">
							    		 <br><a onclick="addtocart('qty2');"><strong>Add to cart</strong><span class="glyphicon glyphicon-shopping-cart"></span></a>
							    	</span>
							    </div>					    
						 	</div>
						 	  
						 	</td></tr></table>
						 	
					</div>
					
					 </div>
					</div>
					
	      </div>
	      <!-- this section is for laptop and other bitg screens -->
	      
			
		
 <!--Start Trigger the modal with a button -->
		<!-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button> -->
			<!-- Modal -->
			<div id="myModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <!-- Modal content-->
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Masala Dosa:</h4><br>
			        <p>is a popular South Indian food.
			        It is made from rice, potato, methi, curry leaves and served with chutneys and daal. 
			        Previously it was one of the most common breakfast in the 
			        South and now Masala dosa can be found in rest of India and other parts of the world.</p>
			      </div>
			      <div class="modal-body">
			        <p>Ingredients:</p>
			        <p>Parbolied rice, potato</p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default btn-xs" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>	
			
<!-- End of Modal  -->			
			
			
			
<!-- Start - this section is for mobile -->
			
<!-- 			 <div class="hiddensection-mobile">
			<div id="dishrestaurants1" style="display:none;">
				  	 <div class="row dishrestaurants">
					    <div class="col-xs-4 restCol"><img class="img-responsive" style="min-width:55px;" src="images/dosa2.jpg">
					    <span class="small">Taste of India</span>
					    <div style="display: inline-block;white-space: nowrap;"><img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
					    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg"></div>
					    </div>
					    <div class="col-xs-5 restCol"><span class="xsmall">5517 Roosevelt Way NE <br>Seattle, WA 98105 <br>(206) 528-1575</span></div>
					    <div class="col-xs-3 restCol" >
					    	<span class="xxsmall">Min Delivery $25<br>ETA 20 mins<br>Del. $2<br><strong>Price $12</strong>
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
					    	<span class="xxsmall">Min Delivery $20<br>ETA 30 mins<br>Del. $3<br><strong>Price $10</strong>
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
					    	<span class="xxsmall">Min Delivery $15<br>ETA 25 mins<br>Del. Free<br><strong>Price $8</strong>
					    		<br><strong>Qty.</strong> <input type="text" style="width:25px;">
					    	</span>
					    </div>					    
					    
					 </div>
			</div>
			 
	      
      </div> -->
<!-- End - this section is for mobile -->
      
      </div>
      
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    
    <script>
	   /*  $("#dish1").mouseover(function(){
	   	 $("#dishdesc").html('Paper Dosa:<br>' + ' Ingredients: <br>   2 cups short-grain rice.<br> ' + 
						+ '½ cup urad dal (split husked black lentils)<br>' 	+'1 teaspoon fenugreek seeds.<br> ' +
						'½ teaspoon salt.<br> 	'+'					Vegetable oil, for frying.<br>');
	    });
	     
       $("#dish1").mouseout(function(){
      	 $("#dishdesc").html('');
       }); */
    </script>

</body>
</html>