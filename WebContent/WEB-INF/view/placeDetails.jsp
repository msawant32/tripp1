<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Plan My Trip</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/jquery.autocomplete.css" rel="stylesheet"> 

  </head>
  <body style="background:#DEECDA">
  
	
	 <div class="container" style="height:100px;">
				
				  
					
					<div class="panel panel-default" >
							<div id="entities" class="panel-body">
								  <table class="table  table-striped">
								  
									<tr>
										<td style="max-height:10%;width:14%"> 
											<!-- <img src="images/mainimage1.jpg" style="height:4%;"> -->
											<img src="${details.result.url}" >
											${details.result.name}
											 
										</td>
										<%-- <td width="30%">
											<a id="busid1" target="#" href="/tripp/details?strPlaceID=${lstItem.place_id}">
												<strong>${lstItem.name}</strong>
											</a> <br>
												   <img src="${lstItem.photos[0].html_attributions[0]}">  
												Rating: ${lstItem.rating}/5 <br>
												  ${lstItem.photos[0].html_attributions[0]}
											<br>
											  <h6> Open Now: ${lstItem.opening_hours.open_now	}  </h6>						
											Phone: ${lstItem.phone} <br>  
										</td>
										<td width="56%">
											Vicinity: ${lstItem.vicinity } 
										</td> --%>
									</tr>  
								 
									</table>
						    	  </div>  
				  </div>
				 
				 
	 		</div>   
 
        
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
  </body>
</html>