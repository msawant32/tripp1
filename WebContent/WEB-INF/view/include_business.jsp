 
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
			  Launch demo modal
			</button>
				<c:if test="${!empty bus2.results}">
					<%-- <b>Total Results: ${bus2.total}</b> --%>
					
					<div class="panel panel-default" >
							<div id="entities" class="panel-body">
								  <table class="table  table-striped">
								   <c:forEach var="lstItem" items="${bus2.results}">
								   <c:if test="${not empty lstItem.rating}">
										<tr>
											<td style="max-height:10%;width:14%"> 
												<!-- <img src="images/mainimage1.jpg" style="height:4%;"> -->
											<img src='https://maps.googleapis.com/maps/api/place/photo?maxwidth=175&maxheight=175&photoreference=${lstItem.photos[0].photo_reference}&key=AIzaSyBirkh8-xL00N860SieOQ9KhrVoblr2Pbo'>											 
											</td>
											<td width="30%">
												<a data-toggle="modal" data-target="#myModal" id="busid1" href="/tripp/details?strPlaceID=${lstItem.place_id}">
													<strong>${lstItem.name}</strong>
												</a> <br>
													 <c:if test="${not empty lstItem.rating}">
													  Rating: ${lstItem.rating}/5 <br>
													  </c:if>
												 
												  <c:if test="${not empty lstItem.opening_hours.open_now}">
												    Open Now: <b>${lstItem.opening_hours.open_now	} </b>  
												  </c:if>						
												 
											</td>
											<td width="56%">
												Vicinity: ${lstItem.vicinity } 
											</td>
										</tr>  
									</c:if>
									</c:forEach>
									</table>
						    	  </div>  
				  </div>
				  </c:if>
				   <c:if test="${empty bus2.results}">
				  	No Matching Results found !!
				  </c:if> 
				  
				  
				  
				  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				         <table class="table  table-striped">
									<tr>
										<td style="max-height:10%;width:14%"> 
											<!-- <img src="images/mainimage1.jpg" style="height:4%;"> -->
											<img src="${details.result.url}" >
											${details.result.name}
										</td>
									</tr>  
						 </table> 
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				        <button type="button" class="btn btn-primary">Save changes</button>
				      </div>
				    </div>
				  </div>
				</div>
				  
