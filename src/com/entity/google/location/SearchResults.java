package com.entity.google.location;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class SearchResults {
	
	private Address_Components[] address_components;
	private String formatted_address;
	private String place_id;
	private Geometry geometry;
	
	public Address_Components[] getAddress_components() {
		return address_components;
	}
	public void setAddress_components(Address_Components[] address_components) {
		this.address_components = address_components;
	}
	public String getFormatted_address() {
		return formatted_address;
	}
	public void setFormatted_address(String formatted_address) {
		this.formatted_address = formatted_address;
	}
	public String getPlace_id() {
		return place_id;
	}
	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}
	public Geometry getGeometry() {
		return geometry;
	}
	public void setGeometry(Geometry geometry) {
		this.geometry = geometry;
	}
	
}
