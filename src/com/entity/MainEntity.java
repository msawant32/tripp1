package com.entity;

import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class MainEntity {
	
	private String total ;
	private String zipCode;
	
	private String searchTerm;
	private List<BusinessDetail> businesses ;
	 
	public List<BusinessDetail> getBusinesses() {
		return businesses;
	}
	public void setBusinesses(List<BusinessDetail> businesses) {
		this.businesses = businesses;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	 
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getSearchTerm() {
		return searchTerm;
	}
	public void setSearchTerm(String searchTerm) {
		this.searchTerm = searchTerm;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MainEntity [total=");
		builder.append(total);
		builder.append(", businessDetail=");
		builder.append(businesses);
		builder.append("]");
		return builder.toString();
	}

}
