 
			
				<c:if test="${!empty bus2.businesses}">
					<b>Total Results: ${bus2.total}</b>
					
					<div class="panel panel-default" >
							<div id="entities" class="panel-body">
								  <table class="table  table-striped">
								   <c:forEach var="lstItem" items="${bus2.businesses}">
									<tr>
										<td style="max-height:10%;width:14%"> 
											<!-- <img src="images/mainimage1.jpg" style="height:4%;"> -->
											<img src="${lstItem.image_url}" >
										</td>
										<td width="30%">
											<a id="busid1" target="#" href="${lstItem.url}">
												<strong>${lstItem.name}</strong>
											</a> <br>
												<img src="${lstItem.rating_img_url}" >
												(${lstItem.review_count})
											<br>
											 <h6><small>Address: ${lstItem.location.display_address} </small></h6>						
											Phone: ${lstItem.phone} <br>
										</td>
										<td width="56%">
												<%-- Open: ${lstItem.is_closed} <br> --%>
												<img src="${lstItem.snippet_image_url}" style="height:25%;"> 
												${lstItem.snippet_text } 
										</td>
									</tr>  
									</c:forEach>
									</table>
						    	  </div>  
				  </div>
				  </c:if>
				 <%--  <c:if test="${empty bus2.businesses}">
				  	No Matching Results found !!
				  </c:if> 
				 --%>
