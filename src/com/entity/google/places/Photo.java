package com.entity.google.places;

import java.util.Arrays;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class Photo {
	
	private String height;
	private String width;
	private String[] html_attributions;
	private String photo_reference;
	
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWidth() {
		return width;
	}
	public void setWidth(String width) {
		this.width = width;
	}
	public String[] getHtml_attributions() {
		return html_attributions;
	}
	public void setHtml_attributions(String[] html_attributions) {
		this.html_attributions = html_attributions;
	}
	public String getPhoto_reference() {
		return photo_reference;
	}
	public void setPhoto_reference(String photo_reference) {
		this.photo_reference = photo_reference;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Photo [height=");
		builder.append(height);
		builder.append(", width=");
		builder.append(width);
		builder.append(", html_attributions=");
		builder.append(Arrays.toString(html_attributions));
		builder.append("]");
		return builder.toString();
	}

}
