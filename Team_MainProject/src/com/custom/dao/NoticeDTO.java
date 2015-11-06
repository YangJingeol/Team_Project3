package com.custom.dao;
import java.util.*;
public class NoticeDTO {
	private int n_No;
	private String n_Title;
	private String n_Content;
	private int n_Hit;
	private Date n_Regdate;
	public int getN_No() {
		return n_No;
	}
	public void setN_No(int n_No) {
		this.n_No = n_No;
	}
	public String getN_Title() {
		return n_Title;
	}
	public void setN_Title(String n_Title) {
		this.n_Title = n_Title;
	}
	public String getN_Content() {
		return n_Content;
	}
	public void setN_Content(String n_Content) {
		this.n_Content = n_Content;
	}
	public int getN_Hit() {
		return n_Hit;
	}
	public void setN_Hit(int n_Hit) {
		this.n_Hit = n_Hit;
	}
	public Date getN_Regdate() {
		return n_Regdate;
	}
	public void setN_Regdate(Date n_Regdate) {
		this.n_Regdate = n_Regdate;
	}
}
