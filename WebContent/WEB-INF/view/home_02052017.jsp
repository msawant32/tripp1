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
  
        <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container" style="height:100px;">
					<div>  
					  <h1>Plan My Trip</h1> 
					  <button class="btn btn-primary login">Login / SignUp</button>
        			</div>
        </div>
    </nav>
    
     <div class="container" style="height:100px;">
  		 				<form name="search" action="/tripp/search" action="POST">
		                  <div class="form-group">
		                    
						    <div class="col-sm-3"  style="padding-top:1%">
						    	  <input class="form-control " type="text" name="zipCode" value="${bus2.zipCode}"
						    	  id="exampleInputName2" placeholder="Your City/State/Zip"> 
						    </div>
						    
						    <div class="col-sm-5" style="padding-top:1%">
							    <input class="input-style1" type="text" name="searchtype"  value="${bus2.searchTerm}"
							    	placeholder="Enter Search Term" id="autocomplete1"/>
							</div>
							 
							<div class="col-sm-5" style="padding-top:1%">
							    <input class="input-style1" type="text" name="searchtype"  value="${bus2.searchTerm}"
							    	placeholder="Enter Search Term" id="autocomplete1"/>
							</div>
							
							
							<div class="col-md-4" align="right" style="padding-top:1%">
						    	 <button class="btn btn-primary" type="submit">Search</button>
						    	 <a  href="/tripp/home" class="btn btn-primary goButton">Reset</a>
							</div>
						  </div>
						  </form>
	</div>		
	
	 <div class="container" style="height:100px;">
				
				 <%@ include file="include_weather.jsp" %>  
				 
				 <%@ include file="include_business.jsp" %>  
	 		</div>   
 
        
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
  </body>
</html>