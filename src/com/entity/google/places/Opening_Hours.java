package com.entity.google.places;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class Opening_Hours {
	
	private String open_now;
	
	public String getOpen_now() {
		return open_now;
	}

	public void setOpen_now(String open_now) {
		this.open_now = open_now;
	}


}
