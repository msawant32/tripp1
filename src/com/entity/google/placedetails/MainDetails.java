package com.entity.google.placedetails;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class MainDetails {
	
	private Detail result;

	public Detail getResult() {
		return result;
	}

	public void setResult(Detail results) {
		this.result = results;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MainDetails [result=");
		builder.append(result);
		builder.append("]");
		return builder.toString();
	}

}
