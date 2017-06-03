package com.entity;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class BusinessDetail {

	private String rating;
	private String id;
	private String snippet_text;
	private String snippet_image_url;
	private String url;
	private String name;
	private String is_claimed;
	private String mobile_url;
	private String rating_img_url;
	private String review_count;
	private String phone;
	private String image_url;
	private String is_closed;
	private Location location;
	
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIs_claimed() {
		return is_claimed;
	}
	public void setIs_claimed(String is_claimed) {
		this.is_claimed = is_claimed;
	}
	public String getMobile_url() {
		return mobile_url;
	}
	public void setMobile_url(String mobile_url) {
		this.mobile_url = mobile_url;
	}
	public String getRating_img_url() {
		return rating_img_url;
	}
	public void setRating_img_url(String rating_img_url) {
		this.rating_img_url = rating_img_url;
	}
	public String getReview_count() {
		return review_count;
	}
	public void setReview_count(String review_count) {
		this.review_count = review_count;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public String getIs_closed() {
		return is_closed;
	}
	public void setIs_closed(String is_closed) {
		this.is_closed = is_closed;
	}
	public Location getLocation() {
		return location;
	}
	public String getSnippet_image_url() {
		return snippet_image_url;
	}
	public void setSnippet_image_url(String snippet_image_url) {
		this.snippet_image_url = snippet_image_url;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public void setLocation(Location location) {
		this.location = location;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSnippet_text() {
		return snippet_text;
	}
	public void setSnippet_text(String snippet_text) {
		this.snippet_text = snippet_text;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BusinessDetail [rating=");
		builder.append(rating);
		builder.append(", name=");
		builder.append(name);
		builder.append(", is_claimed=");
		builder.append(is_claimed);
		builder.append(", mobile_url=");
		builder.append(mobile_url);
		builder.append(", rating_img_url=");
		builder.append(rating_img_url);
		builder.append(", review_count=");
		builder.append(review_count);
		builder.append(", phone=");
		builder.append(phone);
		builder.append(", image_url=");
		builder.append(image_url);
		builder.append(", is_closed=");
		builder.append(is_closed);
		builder.append(", location=");
		builder.append(location);
		builder.append("]");
		return builder.toString();
	}
	

}
