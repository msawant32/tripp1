package com.entity.google.placedetails;

import java.util.Arrays;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import com.entity.google.places.Photo;

@JsonIgnoreProperties (ignoreUnknown = true)
public class Detail {
	
	private String adr_address;
	private String formatted_address;
	private String formatted_phone_number;
	private String name;
	private String[] weekday_text;
	private Photo[] photos;
	private String rating;
	private String url;
	private String website;
	
	public String getAdr_address() {
		return adr_address;
	}
	public void setAdr_address(String adr_address) {
		this.adr_address = adr_address;
	}
	public String getFormatted_address() {
		return formatted_address;
	}
	public void setFormatted_address(String formatted_address) {
		this.formatted_address = formatted_address;
	}
	public String getFormatted_phone_number() {
		return formatted_phone_number;
	}
	public void setFormatted_phone_number(String formatted_phone_number) {
		this.formatted_phone_number = formatted_phone_number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String[] getWeekday_text() {
		return weekday_text;
	}
	public void setWeekday_text(String[] weekday_text) {
		this.weekday_text = weekday_text;
	}
	public Photo[] getPhotos() {
		return photos;
	}
	public void setPhotos(Photo[] photos) {
		this.photos = photos;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Detail [adr_address=");
		builder.append(adr_address);
		builder.append(", formatted_address=");
		builder.append(formatted_address);
		builder.append(", formatted_phone_number=");
		builder.append(formatted_phone_number);
		builder.append(", name=");
		builder.append(name);
		builder.append(", weekday_text=");
		builder.append(Arrays.toString(weekday_text));
		builder.append(", photos=");
		builder.append(photos);
		builder.append(", rating=");
		builder.append(rating);
		builder.append(", url=");
		builder.append(url);
		builder.append(", website=");
		builder.append(website);
		builder.append("]");
		return builder.toString();
	}

}
