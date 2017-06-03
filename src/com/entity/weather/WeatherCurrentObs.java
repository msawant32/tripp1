package com.entity.weather;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class WeatherCurrentObs {
	
	private DisplayLocation display_location;
	private String weather;
	private String temperature_string;
	private String temp_f;
	private String temp_c;
	private String relative_humidity;
	private String wind_mph;
	private String feelslike_string;
	private String feelslike_f;
	private String feelslike_c;
	private String icon_url;
	private String forecast_url;
	
	public DisplayLocation getDisplay_location() {
		return display_location;
	}
	public void setDisplay_location(DisplayLocation display_location) {
		this.display_location = display_location;
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public String getTemperature_string() {
		return temperature_string;
	}
	public void setTemperature_string(String temperature_string) {
		this.temperature_string = temperature_string;
	}
	public String getTemp_f() {
		return temp_f;
	}
	public void setTemp_f(String temp_f) {
		this.temp_f = temp_f;
	}
	public String getTemp_c() {
		return temp_c;
	}
	public void setTemp_c(String temp_c) {
		this.temp_c = temp_c;
	}
	public String getRelative_humidity() {
		return relative_humidity;
	}
	public void setRelative_humidity(String relative_humidity) {
		this.relative_humidity = relative_humidity;
	}
	public String getWind_mph() {
		return wind_mph;
	}
	public void setWind_mph(String wind_mph) {
		this.wind_mph = wind_mph;
	}
	public String getFeelslike_string() {
		return feelslike_string;
	}
	public void setFeelslike_string(String feelslike_string) {
		this.feelslike_string = feelslike_string;
	}
	public String getFeelslike_f() {
		return feelslike_f;
	}
	public void setFeelslike_f(String feelslike_f) {
		this.feelslike_f = feelslike_f;
	}
	public String getFeelslike_c() {
		return feelslike_c;
	}
	public void setFeelslike_c(String feelslike_c) {
		this.feelslike_c = feelslike_c;
	}
	public String getIcon_url() {
		return icon_url;
	}
	public void setIcon_url(String icon_url) {
		this.icon_url = icon_url;
	}
	public String getForecast_url() {
		return forecast_url;
	}
	public void setForecast_url(String forecast_url) {
		this.forecast_url = forecast_url;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("WeatherCurrentObs [display_location=");
		builder.append(display_location);
		builder.append(", weather=");
		builder.append(weather);
		builder.append(", temperature_string=");
		builder.append(temperature_string);
		builder.append(", temp_f=");
		builder.append(temp_f);
		builder.append(", temp_c=");
		builder.append(temp_c);
		builder.append(", relative_humidity=");
		builder.append(relative_humidity);
		builder.append(", wind_mph=");
		builder.append(wind_mph);
		builder.append(", feelslike_string=");
		builder.append(feelslike_string);
		builder.append(", feelslike_f=");
		builder.append(feelslike_f);
		builder.append(", feelslike_c=");
		builder.append(feelslike_c);
		builder.append(", icon_url=");
		builder.append(icon_url);
		builder.append(", forecast_url=");
		builder.append(forecast_url);
		builder.append("]");
		return builder.toString();
	}

}
