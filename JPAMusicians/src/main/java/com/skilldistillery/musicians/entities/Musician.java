package com.skilldistillery.musicians.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Musician {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int id;
	
	@Column(name="stage_name")
	private String stageName;
	
	private String genre;
	
	private String from;
	
	private Boolean active;
	
	@Column(name="image_url")
	private String imageUrl;
	
	@Column(name="real_name")
	private String realName;
	
	
	public Musician() {
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getStageName() {
		return stageName;
	}


	public void setStageName(String stageName) {
		this.stageName = stageName;
	}


	public String getGenre() {
		return genre;
	}


	public void setGenre(String genre) {
		this.genre = genre;
	}


	public String getFrom() {
		return from;
	}


	public void setFrom(String from) {
		this.from = from;
	}


	public Boolean getActive() {
		return active;
	}


	public void setActive(Boolean active) {
		this.active = active;
	}


	public String getImageUrl() {
		return imageUrl;
	}


	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}


	public String getRealName() {
		return realName;
	}


	public void setRealName(String realName) {
		this.realName = realName;
	}


	@Override
	public String toString() {
		return "Musician [id=" + id + ", stageName=" + stageName + ", genre=" + genre + ", from=" + from + ", active="
				+ active + ", imageUrl=" + imageUrl + ", realName=" + realName + "]";
	}
	

}
