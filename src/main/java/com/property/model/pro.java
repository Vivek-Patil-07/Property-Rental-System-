package com.property.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class pro {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String proname;
	private String proowner;
	private double price;
	private String date;
	private String state;
	private String city;
	
	@Column(name = "image_url")
	private String imageUrl;
	private String location;
	private String Desc;
	private String features;
	
	private String category;
	
	 private boolean booked;
	 private String bookedBy;

	public pro(String bookedBy) {
		super();
		this.bookedBy = bookedBy;
	}

	public String getBookedBy() {
		return bookedBy;
	}

	public void setBookedBy(String bookedBy) {
		this.bookedBy = bookedBy;
	}

	public pro(boolean booked) {
		super();
		this.booked = booked;
	}

	public boolean isBooked() {
		return booked;
	}

	public void setBooked(boolean booked) {
		this.booked = booked;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProname() {
		return proname;
	}

	public void setProname(String proname) {
		this.proname = proname;
	}

	public String getProowner() {
		return proowner;
	}

	public void setProowner(String proowner) {
		this.proowner = proowner;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDesc() {
		return Desc;
	}

	public void setDesc(String desc) {
		Desc = desc;
	}

	public String getFeatures() {
		return features;
	}

	public void setFeatures(String features) {
		this.features = features;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public pro(int id, String proname, String proowner, double price, String date, String imageUrl,
			String location, String desc, String features, String category) {
		super();
		this.id = id;
		this.proname = proname;
		this.proowner = proowner;
		this.price = price;
		this.date = date;
		
		this.imageUrl = imageUrl;
		this.location = location;
		Desc = desc;
		this.features = features;
		this.category = category;
	}

	public pro(String state, String city) {
		super();
		this.state = state;
		this.city = city;
	}

	public pro() {
		
	}

	@Override
	public String toString() {
		return "pro [id=" + id + ", proname=" + proname + ", proowner=" + proowner + ", price=" + price + ", date="
				+ date + ", state=" + state + ", city=" + city + ", imageUrl=" + imageUrl + ", location=" + location
				+ ", Desc=" + Desc + ", features=" + features + ", category=" + category + ", booked=" + booked
				+ ", bookedBy=" + bookedBy + "]";
	}




	
	
	
	
	
	
	
	
	
}
