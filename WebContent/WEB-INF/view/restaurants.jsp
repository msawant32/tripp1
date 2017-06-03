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
    
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
    var restname = ''; 
    
     function displayTab(tabname)
     {
    	 if(tabname == 'restaurants')
    	 	restname = '';
    	 
    	 var tab = '#' + tabname;
    	 var atab = "#a" + tabname;
    	 
    	 $('#restaurants').hide();
    	 $('#menu').hide();
    	 $('#terms').hide();
    	 $('#reviews').hide();
    	 $('#coupons').hide();
    	 $('#map').hide();
    	 /* $('#filter').hide(); */
    	 
    	 $('#arestaurants').attr('class','');
    	 $('#amenu').attr('class','');
    	 $('#aterms').attr('class','');
    	 $('#areviews').attr('class','');
    	 $('#acoupons').attr('class','');
    	 $('#amap').attr('class','');
    	 /* $(atab).addClass('active'); */
    	 $(atab).addClass('tabclass'); 
    	 $(tab).show(); 
    	 
    	 if(tabname == 'menu')
    	 	loadMenu(tab);
    	 if(tabname == 'terms')
     	 	loadMenu(tab);
    	 if(tabname == 'reviews')
     	 	loadMenu(tab);
    	 
    	 
     }
     
     function loadMenu(tab)
     {
    	/*  $(tab).html('<p>Menu Items:</p>'); */
    	
    	restname == '' ? ($('#menucolnorest').show(),$('#menucol').hide()):($('#menucolnorest').hide(), $('#menucol').show())
    	
		/* $('#menucol').show();
    	$('#menucolnorest').hide(); */
     }
     
     /* function toggleFilter()
     {
     	 $('#filter').toggle();
     	 var tabid = $('.tabclass').attr('id');
     	 //remove a from the id to get div id 
     	 tabid = tabid.substring(1,tabid.length);
     	 $('#'+tabid).toggle();
     	 
     } */
     
     function updateqty(qtyid, num)
     { 
    	 var elem = $('#' + qtyid);
    	 var elemval = elem.val();
    	 if(parseInt(elemval,10) < 1 & parseInt(num,10) < 0)
    	 return false;
    	
    	 elem.val(parseInt(elemval,10) + parseInt(num,10));
    	 
    	 updatetotalamount(qtyid, num);   	 
    	 
     }
     
     function updatetotalamount(qtyid, num)
     {  
    	 var menuitemnum = qtyid.substring(qtyid.length-1,qtyid.length);
    	 
    	 var intitialtotalamountstr = $('#totalamount').text();
    	 intitialtotalamount = intitialtotalamountstr.substring(1,intitialtotalamountstr.length);
    	 
    	 var price = $('#menuitem' + menuitemnum).text();
    	 price = price.substring(1,price.length);
    	 
    	 var totalamnt = parseFloat(price) * parseInt(num, 10);
    	 totalamnt = parseFloat(totalamnt) + parseFloat(intitialtotalamount);
    	 var str = totalamnt.toFixed(10);
    	 str = str.substring(0, str.length-8);
    	 $('#totalamount').text('$ '+str); 
    	 
     }
     
     function openrestmenu(restid)
     {
    	  $('#restaurants').hide();
    	  $('#menu').show();
    	  $('#menucol').show();
      	  $('#menucolnorest').hide();
          $('#menurestinfo').show();
          
          restname = restid;
          
          displayTab('menu');
     }
     
     
     function addtocart()
     {
    	 
    	 alert('Open a new popup and we could display items which were selected by the user. User can edit the quantity or add special '
    			 + 'instructions like no non-veg, no beef, no nuts, spice level, toppings, suace , dressing etc. We can provide'
    			 +' add to cart and total amount on that popup as well.');
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
					    <a href="/walkwithme/checkout" class="btn btn-primary btn-sm checkout">Checkout
					  	<span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;<label id="checkoutbadge" class="badge"></label>
					  	</a>
        </div>
    </nav>
    
    <div class="container">
    &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn" href="/walkwithme"><strong>Back to Home </strong> </a><br>
		<div class="panel panel-default" >
			<div class="panel-heading">
				<!-- <strong>Restaurants</strong> -->
				  <ul class="nav nav-pills">
					    <li ><a id="arestaurants" class="tabclass"  onclick="displayTab('restaurants');">
					    		<span class="glyphicon glyphicon-cutlery"></span>
					    		<strong>Restaurants</strong>
					    		</a></li>
					    <li  ><a id="amenu" onclick="displayTab('menu');">
					    		<span class="glyphicon glyphicon-blackboard"></span>
					    		<strong>Menu</strong></a></li>
					    <li ><a id="aterms" onclick="displayTab('terms');">
					    		<span class="glyphicon glyphicon-list"></span>
					    		<strong>Terms / Instructions</strong>
					    	</a></li>
					    <li ><a id="areviews" onclick="displayTab('reviews');">
					    	<span class="glyphicon glyphicon-comment"></span>
					    	<strong>Reviews</strong></a></li>
					    	
					    <li ><a id="acoupons" onclick="displayTab('coupons');">
					    	<span class="glyphicon glyphicon-tags"></span>
					    	<strong>Coupons</strong></a></li>				    
					    	
					    <li ><a id="amap" onclick="displayTab('map');">
					    	<span class="glyphicon glyphicon-map-marker"></span>
					    	<strong>Map</strong>
					    	</a>
					    	</li> 
					    	
				  </ul>
			      <!--  <a style="float:right;margin-right: 20px; margin-top:-35px;" onclick="toggleFilter();"> -->
			        <a style="float:right;margin-right: 20px; margin-top:-35px;" data-toggle="collapse" data-target="#filter" >
			       		<span class="glyphicon glyphicon-filter">
			       		</span>
			       		<strong>Filter Restaurants</strong>
			       	</a>  
			</div>
			
			<!-- Start Filter -->
			<!-- <div id="filter" style="margin-top:5px;display:none;"> -->
			<div id="filter" class="collapse out" style="margin-top:5px;">
               		<div class="panel panel-default">
	               		 <div class="panel-heading">
					     	<strong>Re-Search Restaurants based on following criteria:</strong> 
					     </div>
					     <div class="panel-body">
								<div class="row">
									<div class="col-md-3" >
										<input type="checkbox">Free Delivery
										<br><input type="checkbox">Veg
										<br><input type="checkbox">Non-veg
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
			<!-- Start Filter -->
			
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
					 
					<tr>
						<td style="max-height:10%;width:14%"> 
							<img src="images/rest/rest5.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a><strong>Bamboo Indian Restaurant</strong></a>
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
							<img src="images/rest/rest6.jpg" style="height:4%;">
						</td>
						<td width="30%">
							<a><strong>Bamboo Indian Restaurant</strong></a>
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
					 
					</table>
		    	  </div>  
		    	  
		    	  
		    	  <div id="menu" style="display:none;">
		    	  	  		
		    	  			<div id="menucolnorest" style="color:orangered;" >
		    	  	  			Menu: You have not yet selected any restaurant
		    	  	  		</div>
		    	  	  		
		    	  	  		<div id="menucol">
		    	  	  			<div id="menurestinfo" class="well">
		    	  	  			<table class="table">
		    	  	  			<tr>
										<td style="max-height:10%;width:24%"> 
		    	  	  			           <span class="menuheader"> <strong>Bamboo Restaurant</strong> </span>
											<br><br>
											<img src="images/rest/rest5.jpg" style="height:4%;">
										</td>
										<td width="30%">
											<p>15000 Main Street,
											<br>Bellevue, WA 98007</p>							
											<br><div style="display: inline-block;white-space: nowrap;">
												<img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
											    <img src="images/starsmall.jpg"><img src="images/starsmall.jpg">
											</div>
											&nbsp;&nbsp;(12 Reviews)
											<br> 11:00 am - 3:00 pm
											<br> 06:00 pm - 11:00 pm
										</td>
										<td width="27%">
												10% Discount	: $50 or more
											<br>ETA				: 15 mins
											<br>Delivery Charges: $5
										</td>
										<td width="27%">
												Min Delivery	: $20
											<br>ETA				: 15 mins
											<br>Delivery Charges: $5
										</td>
								</tr>
								<tr>
									<td >
									</td>
									<td>
									</td>
									<td>
										<a onclick="addtocart();"><span class="glyphicon glyphicon-briefcase"></span>&nbsp;&nbsp;
										<strong>Dish Items</strong>
										</a>
									</td>
									<td >
										<strong><span>TOTAL: 
											<label style="color:red;" id="totalamount">0.00</label>
											<br>[Taxes not included]</span></strong>
									</td>
								</tr>
								
								</table> 	
		    	  	  		</div>
		    	  	  		
		    	  	  			<table class="table table-striped">
		    	  	  				<tr>
		    	  	  			    	<th>
		    	  	  			    		<span class="menuheader">Starters:</span>
		    	  	  			    	</th>
		    	  	  			    	<th>
		    	  	  			    	</th>
		    	  	  			    </tr>
									<tr>
										<td width="75%">
										 	<strong>Samosa</strong>
										 	<br>Samosa is a fried or baked pastry with a savoury filling, <br>
										 	    such as spiced potatoes, onions, peas, lentils etc
										 	    Ingredients: Maida, potatoes, peas, onions, spices, chili peppers
										</td>
										<td width="25%">
										    <a onclick="updateqty('qty0',-1);"><span class="glyphicon glyphicon-minus-sign"></span></a>
										    <input id="qty0" type="text" value=0 style="height:30px;width:42px;padding-left: 10px;"> 
										    <a onclick="updateqty('qty0',1)"><span class="glyphicon glyphicon-plus-sign"></span></a>
										 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 	 <label id="menuitem0" >$6.99</label>
										</td>
									</tr>
									<tr>
										<td width="75%">
										 	<strong>Bhel</strong> 
										 	<br> Bhel is a savoury Indian snack, and is also a type of chaat. 
										 	It is made out of puffed rice, vegetables and a tangy tamarind sauce.
										</td>
										<td width="25%">
										    <a onclick="updateqty('qty1',-1);"><span class="glyphicon glyphicon-minus-sign"></span></a>
										    <input id="qty1" type="text" value=0 style="height:30px;width:42px;padding-left: 10px;"> 
										    <a onclick="updateqty('qty1',1)"><span class="glyphicon glyphicon-plus-sign"></span></a>
										 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 	<label id="menuitem1" >$7.99</label>
										</td>
									</tr>
		    	  	  			</table>
		    	  	  			<table class="table table-striped">
		    	  	  			    <tr>
		    	  	  			    	<th>
		    	  	  			    		<span class="menuheader">Entrees:</span>
		    	  	  			    	</th>
		    	  	  			    	<th>
		    	  	  			    	</th>
		    	  	  			    </tr>
									<tr>
										<td width="75%">
										 	<strong>Paneer tikka masala:</strong> 
										 	<br>It is essentially made from paneer tikka, which is served in a spiced gravy.
										 	    It is a vegetarian alternative to chicken tikka masala and other meat dishes.
										</td>
										<td width="25%">
										    <a onclick="updateqty('qty2',-1);"><span class="glyphicon glyphicon-minus-sign"></span></a>
										    <input id="qty2" type="text" value=0 style="height:30px;width:42px;padding-left: 10px;"> 
										    <a onclick="updateqty('qty2',1)"><span class="glyphicon glyphicon-plus-sign"></span></a>
										 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 	<label id="menuitem2" >$15.99</label>
										</td>
									</tr>
									<tr>
										<td width="75%">
										 	<strong>Palak Paneer:</strong> 
										 	<br>is a vegetarian North Indian dish consisting of spinach and paneer in a 
										 	thick sauce made from puréed spinach and seasoned with garlic, garam masala, and other spices.
										</td>
										<td width="25%">
										    <a onclick="updateqty('qty3',-1);"><span class="glyphicon glyphicon-minus-sign"></span></a>
										    <input id="qty3" type="text" value=0 style="height:30px;width:42px;padding-left: 10px;"> 
										    <a onclick="updateqty('qty3',1)"><span class="glyphicon glyphicon-plus-sign"></span></a>
										 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 	<label id="menuitem3" >$16.99</label>
										</td>
									</tr>
									<tr>
										<td width="75%"> 
										 	<strong>Bhindi Fry:</strong>
										 	<br>Also called Okra fry, Bhindi fry, or Bharwan bhindi) is stir fried okra (ladies's finger) 
										 	that is slit and stuffed with spice mix such as garam masala and other locally available ground spices.
										</td>
										<td width="25%">
										    <a onclick="updateqty('qty4',-1);"><span class="glyphicon glyphicon-minus-sign"></span></a>
										    <input id="qty4" type="text" value=0 style="height:30px;width:42px;padding-left: 10px;"> 
										    <a onclick="updateqty('qty4',1)"><span class="glyphicon glyphicon-plus-sign"></span></a>
										 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 	<label id="menuitem4" >$16.99</label>
										</td>
									</tr>
									<tr>
										<td width="75%">
										 	<strong>Sarson da saag:</strong>
										 	<br>Sarson da saag is a popular 
										 	vegetable dish in the Punjab regions of India and Pakistan made from mustard leaves (sarson) and spices.
										</td>
										<td width="25%">
										    <a onclick="updateqty('qty5',-1);"><span class="glyphicon glyphicon-minus-sign"></span></a>
										    <input id="qty5" type="text" value=0 style="height:30px;width:42px;padding-left: 10px;"> 
										    <a onclick="updateqty('qty5',1)"><span class="glyphicon glyphicon-plus-sign"></span></a>
										 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										 	<label id="menuitem5" >$18.99</label>
										</td>
									</tr>
		    	  	  			</table>
		    	  	  	</div>
		    	  </div>
			      <div id="terms" class="container" style="display:none;">
		    	  	   	<div class="row">
		    	  			<div class="col-md-12" style="color:orangered;">
		    	  	  			Terms: 
		    	  	  			<br>You have not yet selected any restaurant/dish
		    	  	  			<br>We can capture special instructions for the dish item selected. We can remove this link if 
		    	  	  			<br>we are ok with capturing the same information on the menu tab.
		    	  	  		</div>	
		    	  	  	</div>
		    	  </div>
		    	  <div id="reviews" class="container" style="display:none;">
		    	  		 <div class="row">
		    	  			<div class="col-md-12" style="color:orangered;">
		    	  	  			Reviews: You have not yet selected any restaurant
		    	  	  		</div>	
		    	  	  	</div>
		    	  </div>
		    	  <div id="coupons" class="container" style="display:none;">
		    	  		 <div class="row">
		    	  			<div class="col-md-12" style="color:orangered;">
		    	  	  			Coupons: 
		    	  	  			<br> You have not yet selected any restaurant
		    	  	  			<br> Or else we can display coupons of all restaurants to user so that he can see them all and compare.
		    	  	  		</div>	
		    	  	  	</div>
		    	  </div>
		    	  
		    	   <div id="map" style="display:none;">
		    	  	  			<!--  Show Map -->
						             <div  style="margin: 5px 5px 5px 5px;">
						                <img class="img-responsive" src="images/mapImage.jpg"></img>
						             </div>
		    	  </div>		 		    	  
		    	  
			</div>
		</div>
    
</body>
</html>    
    
    
    