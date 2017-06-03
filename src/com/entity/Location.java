package com.entity;

import java.util.List;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class Location {
	
	private String state_code;
	private String postal_code;
	private String city;
	private String country_code;
	private List<String> address;
	private List<String> display_address;
	
	public String getState_code() {
		return state_code;
	}
	public void setState_code(String state_code) {
		this.state_code = state_code;
	}
	public String getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry_code() {
		return country_code;
	}
	public void setCountry_code(String country_code) {
		this.country_code = country_code;
	}
	 
	public List<String> getAddress() {
		return address;
	}
	public void setAddress(List<String> address) {
		this.address = address;
	}
	public List<String> getDisplay_address() {
		return display_address;
	}
	public void setDisplay_address(List<String> display_address) {
		this.display_address = display_address;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Location [state_code=");
		builder.append(state_code);
		builder.append(", postal_code=");
		builder.append(postal_code);
		builder.append(", city=");
		builder.append(city);
		builder.append(", country_code=");
		builder.append(country_code);
		builder.append(", address=");
		builder.append(address);
		builder.append(", display_address=");
		builder.append(display_address);
		builder.append("]");
		return builder.toString();
	}
}
