package com.entity.google.places;

import java.util.Arrays;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import com.entity.google.location.Geometry;

@JsonIgnoreProperties (ignoreUnknown = true)
public class SearchResult {
	
	private Geometry geometry;
	private String icon;
	private String id;
	private String name;
	private Opening_Hours opening_hours;
	private Photo[] photos;
	private String place_id;
	private String vicinity;
	private String rating;
	
	public Geometry getGeometry() {
		return geometry;
	}
	public void setGeometry(Geometry geometry) {
		this.geometry = geometry;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	/*public String getOpening_hours() {
		return opening_hours;
	}
	public void setOpening_hours(String opening_hours) {
		this.opening_hours = opening_hours;
	}*/
	public Photo[] getPhotos() {
		return photos;
	}
	public void setPhotos(Photo[] photos) {
		this.photos = photos;
	}
	public String getPlace_id() {
		return place_id;
	}
	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}
	public String getVicinity() {
		return vicinity;
	}
	public void setVicinity(String vicinity) {
		this.vicinity = vicinity;
	}
	public Opening_Hours getOpening_hours() {
		return opening_hours;
	}
	public void setOpening_hours(Opening_Hours opening_hours) {
		this.opening_hours = opening_hours;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SearchResult [geometry=");
		builder.append(geometry);
		builder.append(", icon=");
		builder.append(icon);
		builder.append(", id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", opening_hours=");
		builder.append(opening_hours);
		builder.append(", photos=");
		builder.append(Arrays.toString(photos));
		builder.append(", place_id=");
		builder.append(place_id);
		builder.append(", vicinity=");
		builder.append(vicinity);
		builder.append(", rating=");
		builder.append(rating);
		builder.append("]");
		return builder.toString();
	}
}
