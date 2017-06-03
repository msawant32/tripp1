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
 <link href="css/jquery.autocomplete.css" rel="stylesheet"> 
 
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.autocomplete.js"></script>
    
    <script>
    function showDishDetails()
    {
    	$("#collapseOne").collapse('toggle');
        $("#collapseTwo").collapse('hide');
        $("#collapseThree").collapse('hide');
        
    }
    function showPayment()
    {
            $("#collapseOne").collapse('hide');
            $("#collapseTwo").collapse('toggle');
            $("#collapseThree").collapse('hide');
    }
    function showReview()
    {
            $("#collapseOne").collapse('hide');
            $("#collapseTwo").collapse('hide');
            $("#collapseThree").collapse('toggle');
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
					  	<a href="/walkwithme/checkout" class="btn btn-primary btn-sm checkout">Checkout
					  	<span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;<label id="checkoutbadge" class="badge"></label>
					  	</a>
        			</div>
        </div>
    </nav>
    
    
        <div class="container">
    &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn" href="/walkwithme"><strong>Back to Home </strong> </a><br>
		<div class="panel panel-default" >
			<div class="panel-heading">
			        <span style="color:brown;"><h4><strong>CHECKOUT</strong></h4></span>
			</div>
			
			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			
			              <div class="panel panel-default" style="margin-bottom: 4px;">
		                        <button style="width: 1140px;text-align: -webkit-auto;background-color: rgb(246, 221, 221);"  onclick="showDishDetails();">
				                    <div class="panel-heading">
				                         <h4 class="panel-title">
					                        <!-- <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> -->
					                          <strong>Dish Details:</strong>
				                      	</h4>
				                    </div>
		                        </button>

				                <div id="collapseOne" class="panel-collapse collapse in">
				                    <div class="panel-body">
				                        
					
			
			
			
			
			
			<div id="restaurants" class="panel-body">
				  <table class="table  table-striped">
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
								Open Now<br><br>
								<a><strong>Apply Coupon</strong></a>
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
					<tr><td colspan="6">
							 <table class="table table-striped">
							      <tr>
									 <th>
									   Dish:
									 </th>
									  <th>
									   Special Instructions:
									 </th>
									  <th>
									   Quantity:
									 </th>
									  <th>
									   Price:
									 </th>
									 <th>
									   Total Price:
									 </th>
								 </tr>
							     
								 <tr>
									 <td>
									   1. Masala Dosa 
									 </td>
									  <td>
									   <textarea class="form-control" rows="2" id="specialInstr"></textarea>
									 </td>
									  <td>
									   2
									 </td>
									  <td>
									   $10.00
									 </td>
									 <td>
									   $20.00
									 </td>
								 </tr>
								<tr>
									 <td>
									   2. Veg. Kadhai 
									 </td>
									  <td>
									   <textarea class="form-control" rows="2" id="specialInstr"></textarea>
									 </td>
									  <td>
									   2
									 </td>
									  <td>
									   $10.00
									 </td>
									 <td>
									   $20.00
									 </td>
								 </tr>
								 <tr>
									 <td>
									   3. Potato Curry 
									 </td>
									  <td>
									   <textarea class="form-control" rows="2" id="specialInstr"></textarea>
									 </td>
									  <td>
									   1
									 </td>
									  <td>
									   $12.00
									 </td>
									 <td>
									   $12.00
									 </td>
								 </tr>
								<tr>
									 <td>
									   4. Veg. Biryani 
									 </td>
									  <td>
									   <textarea class="form-control" rows="2" id="specialInstr"></textarea>
									 </td>
									  <td>
									   1
									 </td>
									  <td>
									   $14.00
									 </td>
									 <td>
									   $14.00
									 </td>
								 </tr>
								 <tr>
									 <th>
									    <span style="color:brown;"><h4>Total Amount</h4></span> 
									 </th>
									  <th>
									 </th>
									  <th>
									   
									 </th>
									  <th>
									 </th>
									 <th>
									   <span style="color:brown;"><h4> $66.00</h4></span>
									 </th>
								 </tr>
								 <tr>
									 <th>
									 </th>
									  <th>
									 </th>
									  <th>
									 </th>
									  <td colspan="2">
									 </td>
								 </tr>
							 </table>
							  <button class="btn btn-primary" style="margin-left: 800px;">Save and Continue</button>
					</td></tr> 
					</table>
		    	  </div>  
		    	  
		    	  
			  		</div>
			  		</div> 	
			  	</div>	
			  		
			  	 <div class="panel panel-default" style="margin-bottom: 4px;">
			  	 <button style="width: 1140px;text-align: -webkit-auto;background-color: rgb(246, 221, 221);"  onclick="showPayment();">
				                    <div class="panel-heading">
				                         <h3 class="panel-title">
					                        <!-- <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> -->
					                         <strong>Payment:</strong> 
				                      	</h3>
				                    </div>
		         </button>	
				   <div id="collapseTwo" class="panel-collapse collapse">
					                    <div class="panel-body">
					                     <div class="form-group">
						                    <table class="table ">
												<tr>
													<td>
													<strong>Personal Information:</strong><br><br>
													First Name<br>
													<input class="form-control" type="text" width="200px;"><br>
													Address Line 1 <br>
													<input class="form-control" type="text" width="200px;"><br>
													City<br>
													<input class="form-control" type="text" width="200px;"><br>
													Country<br>
													<input class="form-control" type="text" width="200px;"><br>
													
													</td>
													<td>
												    <br><br>
													Last Name<br>
													<input class="form-control" type="text" width="200px;"><br>
													Address Line 2 <br>
													<input class="form-control" type="text" width="200px;"><br>
													State<br>
													<input class="form-control" type="text" width="200px;"><br>
													</td>
												</tr>
						                    </table>
					                      </div>
					                      
					                      
					                      <div class="form-group">
						                    <table class="table table-striped">
												<tr>
													<td>
													<strong>Payment Information:</strong><br><br>
													Credit Card Type:<br>
													<select class="form-control" type="text" width="200px;">
														<option value="Visa">Visa</option>
														<option value="Mastercard">Mastercard</option>
														<option value="Amex">Amex</option>
													</select><br>
													Credit Card Number:<br>
													<input class="form-control" type="text" width="200px;"><br>
													Billing Address:
													<input  type="checkbox">Same as above<br>
													</td>
													<td>
													
													</td>
												</tr>
												<tr>
													<td>
													<br>
													Address Line 1 <br>
													<input class="form-control" type="text" width="200px;"><br>
													City<br>
													<input class="form-control" type="text" width="200px;"><br>
													Country<br>
													<input class="form-control" type="text" width="200px;"><br>
													
													</td>
												   <td>
												    <br> 
													Address Line 2 <br>
													<input class="form-control" type="text" width="200px;"><br>
													State<br>
													<input class="form-control" type="text" width="200px;"><br>
													</td>
												</tr>
						                    </table>
						                     You can review the order before confirmation.
						                     <button class="btn btn-primary" style="margin-left: 900px;">Continue</button>
						                    
					                      </div>
					                      
					                      
					                    </div>
				   </div>	
				   </div>	
				   
				   
				   
			     <div class="panel panel-default" style="margin-bottom: 4px;">
			  	 <button style="width: 1140px;text-align: -webkit-auto;background-color: rgb(246, 221, 221);"  onclick="showReview();">
				                    <div class="panel-heading">
				                         <h3 class="panel-title">
					                         <strong>Review Order:</strong> 
				                      	</h3>
				                    </div>
		         </button>	
				   <div id="collapseThree" class="panel-collapse collapse">
					                    <div class="panel-body">
					                     <div class="form-group">
						                    <table class="table ">
												 <tr>
													 <td>
													   1. Masala Dosa 
													 </td>
													  <td>
													   Special Instructions: No Peanuts.
													 </td>
													  <td>
													  <input type="text" value="2" style="width: 40px;"> <a>Update Qty.</a>
													 </td>
													  <td>
													   $10.00
													 </td>
													 <td>
													   $20.00
													 </td>
												 </tr>
												 <tr>
													 <td>
													   2. Potato Curry 
													 </td>
													  <td>
													   Special Instructions: No Peanuts.
													 </td>
													  <td>
													  <input type="text" value="1" style="width: 40px;"> <a>Update Qty.</a>
													 </td>
													  <td>
													   $10.00
													 </td>
													 <td>
													   $20.00
													 </td>
												 </tr>
												 <tr>
													 <td>
													   3. Veg. Kadhai 
													 </td>
													  <td>
													   Special Instructions: No Peanuts.
													 </td>
													  <td>
													  <input type="text" value="1" style="width: 40px;"> <a>Update Qty.</a>
													 </td>
													  <td>
													   $10.00
													 </td>
													 <td>
													   $20.00
													 </td>
												 </tr>
												  
												 <tr>
													 <td>
													   <span style="color:brown;"><strong>Total Amount:</strong></span>
													 </td>
													  <td>
													  
													 </td>
													  <td>
													 
													 </td>
													  <td>
													  
													 </td>
													 <td>
													  <span style="color:brown;"><strong>$60.00</strong></span>
													 </td>
												 </tr>
						                    </table>
						                    
						                     <button class="btn btn-primary" style="margin-left: 900px;">Submit Order</button>
						                     
					                      </div>
					                      
					                       
					                      
					                    </div>
				   </div>	
				   </div>	
				   
				   
				   	    	</div>  
		    	  
			</div>
		</div>
    

</body>
</html>