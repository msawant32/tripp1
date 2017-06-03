package com.entity.google.places;

import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class MainEntity {
	
	private List<SearchResult> results;
	private String status;
	private String zipCode;
	
	public List<SearchResult> getResults() {
		return results;
	}
	public void setResults(List<SearchResult> results) {
		this.results = results;
	}
	private String searchTerm;
	
	 
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
		builder.append("MainEntity [results=");
		builder.append(results);
		builder.append(", status=");
		builder.append(status);
		builder.append(", zipCode=");
		builder.append(zipCode);
		builder.append(", searchTerm=");
		builder.append(searchTerm);
		builder.append("]");
		return builder.toString();
	}

}
