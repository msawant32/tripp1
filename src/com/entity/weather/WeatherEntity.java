package com.entity.weather;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties (ignoreUnknown = true)
public class WeatherEntity {
	

	private WeatherCurrentObs current_observation;

	public WeatherCurrentObs getCurrent_observation() {
		return current_observation;
	}

	public void setCurrent_observation(WeatherCurrentObs current_observation) {
		this.current_observation = current_observation;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("WeatherEntity [current_observation=");
		builder.append(current_observation);
		builder.append("]");
		return builder.toString();
	}
}
