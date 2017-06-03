package com.entity.google.location;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class Geometry {

	private Location location;
	private String location_type;
	
	public Location getLocation() {
		return location;
	}
	public void setLocation(Location location) {
		this.location = location;
	}
	public String getLocation_type() {
		return location_type;
	}
	public void setLocation_type(String location_type) {
		this.location_type = location_type;
	}
}
