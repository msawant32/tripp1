  
 
   
	<form name="searchForm" id="searchForm" class="form-horizontal" 
			style="padding-top: 50%; padding-left:10%;padding-right:10%; padding-bottom:4%;">
	                    <div class="well well-sm" style="opacity: 0.8;">
		                  <!--  <div>
		                     <label class="radio-inline">
								  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="Delivery">
								  <strong>Delivery</strong> 
								</label>
								<label class="radio-inline" style="padding-left:5%">
								  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="Pickup"> 
								  <strong>PickUp</strong>
							  </label>
		                   </div> -->
		                   
		                  <div class="form-group">
						   <!--  <label for="exampleInputName2">Name</label> -->
						    <div class="col-sm-3"  style="padding-top:1%">
						    	  <input class="form-control " type="text"  id="exampleInputName2" placeholder="City/State/Zip"> 
						    </div>
						    
						    <div class="col-sm-5" style="padding-top:1%">
							    <!-- <select class="form-control">
							    <option selected disabled>Select Cuisine/Dish/Restaurant</option>
							    <option> Biryani House </option>
							    <option> Pizzeria </option>
							    </select> -->
							    <input class="input-style1" type="text" name="searchtype" 
							    	placeholder="Enter places to visit" id="autocomplete1"/>
							</div>
							<div class="col-md-1" style="padding-top:1%">
						    	<a   onclick="submitsearch('searchForm','#autocomplete1');" class="btn btn-primary goButton">Go</a>
							</div>
							<div class="col-md-3" style="padding-top:1%">
						    	<!-- <button type="submit" class="btn btn-success goButton">Quick Delivery</button> -->
						    	 <a class="btn btn-primary" href="/tripp/quickdelivery">Quick Delivery</a>
							</div>
						  </div>
						  </div>
	</form>  
 
  		<script>
  		var rest = [
  		               	{ value: 'Bombay Restaurant', data: {category: 'Restaurant'} },
  		             	{ value: 'Delhi Chat House', data: {category: 'Restaurant'} },
  		         		{ value: 'China House', data: {category: 'Restaurant'} },
  		           		{ value: 'Italian', data: {category: 'Cuisine'} },
  		         		{ value: 'Indian', data: {category: 'Cuisine'} },
  		         		{ value: 'Asian', data: {category: 'Cuisine'} },
  		         		{ value: 'Chinese', data: {category: 'Cuisine'} },
  		         		{ value: 'Japanese', data: {category: 'Cuisine'} },
  		         		{ value: 'Thai', data: {category: 'Cuisine'} },
  		         		{ value: 'Bhel', data: {category: 'Dish'} },
  		         		{ value: 'Bhel Puri', data: {category: 'Dish'} },
  		         		{ value: 'Potato Curry', data: {category: 'Dish'} },
  		               { value: 'Chilli Paneer', data:  {category: 'Dish'}  }
  		            ];
  		            
                	$('.input-style1').autocomplete({
                      lookup: rest,
                      groupBy: 'category',
                      minChars: 1,
                      maxHeight: 200, 
                      autoSelectFirst: true,
                      tabDisabled: true,
                      showNoSuggestionNotice: true,
                      noSuggestionNotice: 'No results found',
                    //  serviceUrl: 'users/city/',
                      onSelect: function (suggestion) {
                         // alert('You selected: ' + suggestion.value + ', ' + suggestion.data);
                    	 // alert('You selected: ' + suggestion.id + ', ' + suggestion.text);
                      }
                  });
            
          
              	function submitsearch(formname, elementname)
              	   {
					 var value = $(elementname).val();
					 var data = $(elementname).data();
					// alert($(elementname + ' option:selected').index() );	
					 
					 
					  
					 
              		    var hidden = document.createElement("input");
              			hidden.type = "hidden";
              			hidden.name = "selecthiddensearchtype";
              		    hidden.value = $(elementname).val();
              		    
              		   var f = document.getElementById(formname);
              			  f.appendChild(hidden);
              			  //f.action = 'search';
              			  //f.action = "/walkwithme/quickdelivery";
              			  f.action="/walkwithme/restaurants";
              			  f.submit();
              	   }      	
                	
                	
     </script>