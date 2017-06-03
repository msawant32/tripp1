package com.entity.google.location;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class MainLocation {
	
	private String status;
	private SearchResults[] results;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public SearchResults[] getResults() {
		return results;
	}
	public void setResults(SearchResults[] results) {
		this.results = results;
	}

}
