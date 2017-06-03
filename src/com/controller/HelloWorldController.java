package com.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.entity.BusinessDetail;
import com.entity.MainEntity;
import com.entity.google.location.MainLocation;
import com.entity.google.placedetails.MainDetails;
import com.entity.weather.WeatherEntity;

@Controller 
public class HelloWorldController {
	
	private static String key = "AIzaSyBirkh8-xL00N860SieOQ9KhrVoblr2Pbo";
	private static String place_photo = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=CnRtAAAATLZNl354RwP_9UKbQ_5Psy40texXePv4oAlgP4qNEkdIrkyse7rPXYGd9D_Uj1rVsQdWT4oRz4QrYAJNpFX7rzqqMlZw2h2E2y5IKMUZ7ouD_SlcHxYq1yL4KbKUv3qtWgTK0A6QbGh87GB3sscrHRIQiG2RrmU_jF4tENr9wGS_YxoUSSDrYjWmrNfeEHSGSc3FyhNLlBU";
	
	@RequestMapping("/home")
	public ModelAndView hello() {
		Map<String,String> modelmap = new HashMap<String,String>();
		modelmap.put("status", "SUCCESS");
		return new ModelAndView("home", null);
	}
	
	@RequestMapping("/details")
	public ModelAndView details(@RequestParam("strPlaceID") String strPlaceID) {
		Map<String,Object> modelmap = new HashMap<String,Object>();
		
		System.out.println("strPlaceID=" + strPlaceID);
		String strUrl = "https://maps.googleapis.com/maps/api/place/details/json?placeid="+ strPlaceID + "&key=AIzaSyBirkh8-xL00N860SieOQ9KhrVoblr2Pbo";
		String str = RestCall(strUrl);
		ObjectMapper objectMapper = new ObjectMapper();
		MainDetails main = null;
		try {
			main = objectMapper.readValue(str, MainDetails.class);
			System.out.print("Main Object:" + main);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		modelmap.put("details", main  );
		return new ModelAndView("home", modelmap);  
	}
	
	@RequestMapping("/search")
	public ModelAndView search( @RequestParam("zipCode") String zipCode, @RequestParam("searchtype") String searchType ) { 

		Map<String,Object> modelmap = new HashMap<String,Object>();
		String searchTerm = searchType;
		//MainEntity main = new MainEntity();
		ObjectMapper objectMapper = new ObjectMapper();
		modelmap.put("status", "SUCCESS");
		com.entity.google.places.MainEntity main = new com.entity.google.places.MainEntity();
		main.setZipCode(zipCode);
		main.setSearchTerm(searchType);
		
		System.out.println("Zip" + zipCode + ":searchtype:" + searchType);
		//Replace spaces by + 
		searchTerm = searchTerm.replaceAll("\\s", "+");
		
		if(!org.apache.commons.lang3.StringUtils.isNumeric(zipCode))
			return new ModelAndView("home", modelmap);  
		
		String lat_lng = getLatLong(zipCode);
		System.out.println("latLng is:" + lat_lng);
		main = getGooglePlaces(lat_lng, searchTerm);
		
		//String str = test.search(searchType, zipCode);
		//call google search 
		
		 try {
			//main = objectMapper.readValue(str, MainEntity.class);
			System.out.println("After Mapping:" + main.toString());
			String weatherZip = zipCode;
			//if user has not entered zip then get it from business list
			 //Commented for testing: use the zipcode entered by used on the search page
			/*if(null != main && null != main.getBusinesses() && main.getBusinesses().size() > 0
					&& null != main.getBusinesses().get(0)
				&&	null != main.getBusinesses().get(0).getLocation()){
				weatherZip = main.getBusinesses().get(0).getLocation().getPostal_code();
			}
*/
			weatherZip = "28262";
			//get weather for zp code
			String strWeather = getWeather(weatherZip);
			WeatherEntity weather = null ;
			if(!StringUtils.isEmpty(strWeather))
				weather = objectMapper.readValue(strWeather, WeatherEntity.class);
			modelmap.put("weather", weather  );
			System.out.println("Weather is:" + weather);
			
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		main.setZipCode(zipCode);
		main.setSearchTerm(searchType);
		modelmap.put("bus2", main  );
		return new ModelAndView("home", modelmap);  
	}

	/**
	 * Get weather for the zip code
	 * @param zipCode
	 * @return
     */
	public String getWeather(String zipCode)
	{
		StringBuffer strBuff = new StringBuffer();
		String output;
		try {
			URL url = new URL("http://api.wunderground.com/api/c04da6a2cf00e318/conditions/q/" + zipCode + ".json");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");
			if (conn.getResponseCode() != 200) {
				 throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode()); 
			}
			BufferedReader br = new BufferedReader(new InputStreamReader(
				(conn.getInputStream())));
			
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				strBuff = strBuff.append(output);
			}
			System.out.println(strBuff.toString());
			conn.disconnect();

		  } catch (MalformedURLException e) {
			e.printStackTrace();
		  } catch (IOException e) {
			e.printStackTrace();
		  } catch(Exception e) {
			e.printStackTrace();
		  }
		 
		return strBuff.toString();
	}
	
	private String getLatLong(String zipCode)
	{
		String str = "https://maps.googleapis.com/maps/api/geocode/json?key=" + key + "&address=" + zipCode;
		String restResp = RestCall(str);
		MainLocation main = null;
		try {
			if(null != restResp){
					ObjectMapper objectMapper = new ObjectMapper() ;
					main = objectMapper.readValue(restResp, MainLocation.class);
					 if(null != main && null != main.getResults()  && null != main.getResults()[0]
							 && null != main.getResults()[0].getGeometry() 
							 && null != main.getResults()[0].getGeometry().getLocation()){
						 
							String lat = main.getResults()[0].getGeometry().getLocation().getLat();
							String lng = main.getResults()[0].getGeometry().getLocation().getLng();
							return lat + "," + lng;
					 }
							
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private String RestCall(String strURL)
	{
		StringBuffer strBuff = new StringBuffer();
		String output;
		try {
			System.out.print("Rest url is:" + strURL);
			URL url = new URL(strURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");
			if (conn.getResponseCode() != 200) {
				 throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode()); 
			}
			BufferedReader br = new BufferedReader(new InputStreamReader(
				(conn.getInputStream())));
			
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				strBuff = strBuff.append(output);
			}
			System.out.println(strBuff.toString());
			conn.disconnect();

		  } catch (MalformedURLException e) {
			e.printStackTrace();
		  } catch (IOException e) {
			e.printStackTrace();
		  } catch(Exception e) {
			e.printStackTrace();
		  }
		 
		return strBuff.toString();
	}
	
	
	public com.entity.google.places.MainEntity getGooglePlaces(String location, String searchKey)
	{
		com.entity.google.places.MainEntity main = null;
		try {
			
		String strURL = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=" + location
				+ "&radius=250000&keyword=" +searchKey + "&key=" + key;
		String strResp = RestCall(strURL);
	
			if(null != strResp){
				ObjectMapper objectMapper = new ObjectMapper() ;
					 main = objectMapper.readValue(strResp, com.entity.google.places.MainEntity.class);
					 System.out.println("Search Results:" + main);
			}
		
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return main;
		
	}
}
