package com.web.sollabo.event.dto;

import java.sql.Timestamp;

public class EventDTO {
	
	private int eventNo;
	private String eventTitle;
	private String eventCotent;
	private String eventWriter;
	private String eventFile;
	private Timestamp eventStartDate;
	private Timestamp eventEndDate;
	private Timestamp eventRegDate;
	private int eventHit;
	private int eventDel;
	
	public int getEventNo() {
		return eventNo;
	}
	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}
	public String getEventTitle() {
		return eventTitle;
	}
	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}
	public String getEventCotent() {
		return eventCotent;
	}
	public void setEventCotent(String eventCotent) {
		this.eventCotent = eventCotent;
	}
	public String getEventWriter() {
		return eventWriter;
	}
	public void setEventWriter(String eventWriter) {
		this.eventWriter = eventWriter;
	}
	public String getEventFile() {
		return eventFile;
	}
	public void setEventFile(String eventFile) {
		this.eventFile = eventFile;
	}
	public Timestamp getEventStartDate() {
		return eventStartDate;
	}
	public void setEventStartDate(Timestamp eventStartDate) {
		this.eventStartDate = eventStartDate;
	}
	public Timestamp getEventEndDate() {
		return eventEndDate;
	}
	public void setEventEndDate(Timestamp eventEndDate) {
		this.eventEndDate = eventEndDate;
	}
	public Timestamp getEventRegDate() {
		return eventRegDate;
	}
	public void setEventRegDate(Timestamp eventRegDate) {
		this.eventRegDate = eventRegDate;
	}
	public int getEventHit() {
		return eventHit;
	}
	public void setEventHit(int eventHit) {
		this.eventHit = eventHit;
	}
	public int getEventDel() {
		return eventDel;
	}
	public void setEventDel(int eventDel) {
		this.eventDel = eventDel;
	}
	
	
}
