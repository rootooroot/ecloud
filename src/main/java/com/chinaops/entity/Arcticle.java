package com.chinaops.entity;

public class Arcticle {
	private int id;
	private String arc_title;
	private String arc_content;
	private int is_free;
	private String publish_time;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getArc_title() {
		return arc_title;
	}
	public void setArc_title(String arc_title) {
		this.arc_title = arc_title;
	}
	public String getArc_content() {
		return arc_content;
	}
	public void setArc_content(String arc_content) {
		this.arc_content = arc_content;
	}
	public int getIs_free() {
		return is_free;
	}
	public void setIs_free(int is_free) {
		this.is_free = is_free;
	}
	public String getPublish_time() {
		return publish_time;
	}
	public void setPublish_time(String publish_time) {
		this.publish_time = publish_time;
	}
	
}
