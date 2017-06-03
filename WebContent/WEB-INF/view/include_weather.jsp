
					 <c:if test="${!empty weather && !empty weather.current_observation}">    
					 
					 <div class="container" align="right" style="height:100px;">	
					 <b><a href="#">Travel</a></b>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
					 <b><a href="#">Offers</a></b>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;<b>
					 <a href="#">Map</a></b> &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;<b>
					 <a href="#">Weather Forecast</a></b> 
					</div>
					 
					  
						 <div class="panel panel-default" >
						 <b>&nbsp;Weather Forecast:</b>
							  	<div id="weather" class="panel-body">
							  		<table class="table  table-striped">
							  		   <tr>
							  				<th>City
							  				</th>
							  				<th> Temp
							  				</th>
							  				<th> Feels Like
							  				</th>
							  				<th>Relative Humidity
							  				</th>
							  				<th>Weather
							  				</th>
							  			<tr>
							  			<tr>
							  			   <td>
											 ${ weather.current_observation.display_location.full}
										  </td>
										  <td>
											  ${weather.current_observation.temperature_string }
										  </td>
										  <td>
											  ${weather.current_observation.feelslike_string }
										  </td>
										  <td>
											  ${weather.current_observation.relative_humidity }
										  </td>
										  <td>
											  ${weather.current_observation.weather }
										  </td>
									  </tr>
									  <tr>
									  	<td colspan="5">
									  		For more details please click <a target="#" href="${weather.current_observation.forecast_url }">here</a>
									  	</td>
									  </tr>
									  </table>
								  </div>
						  </div>
				</c:if>