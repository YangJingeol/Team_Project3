package com.member.dao;
/*
 * CREATE TABLE meeting(
  m_no NUMBER,
  m_lang1 VARCHAR2(20)  CONSTRAINT mt_nn_lang1 NOT NULL,
  m_lang2 VARCHAR2(20)  CONSTRAINT mt_nn_lang2 NOT NULL,
  m_lang1num NUMBER  CONSTRAINT mt_nn_lang1num NOT NULL,
  m_lang2num NUMBER  CONSTRAINT mt_nn_lang2num NOT NULL,
  m_title VARCHAR2(40) CONSTRAINT mt_nn_title NOT NULL,
  m_summary VARCHAR2(50)  CONSTRAINT mt_nn_summary NOT NULL,
  m_content VARCHAR2(1000)  CONSTRAINT mt_nn_content NOT NULL,
  m_meetingDate VARCHAR2(100)  CONSTRAINT mt_nn_mtdate NOT NULL,
  m_partDate VARCHAR2(100)  CONSTRAINT mt_nn_pdate NOT NULL,
  m_place VARCHAR2(20)  CONSTRAINT mt_nn_place NOT NULL,
  m_location VARCHAR2(100)  CONSTRAINT mt_nn_location NOT NULL,
  m_email VARCHAR2(30),
  m_tel VARCHAR2(30),
  m_end VARCHAR2(10),
  CONSTRAINT mt_pk_no PRIMARY KEY(m_no)
);
 * 
 */
public class MeetingDTO {
	private int m_no;
	private String m_lang1;
	private String m_lang2;
	private int m_lang1num;
	private int m_lang2num;
	private String m_title;
	private String m_summary;
	private String m_content;
	private String m_meetingDate;
	private String m_partDate;
	private String m_place;
	private String m_location;
	private String m_email;
	private String m_tel;
	private String m_end;
	
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getM_lang1() {
		return m_lang1;
	}
	public void setM_lang1(String m_lang1) {
		this.m_lang1 = m_lang1;
	}
	public String getM_lang2() {
		return m_lang2;
	}
	public void setM_lang2(String m_lang2) {
		this.m_lang2 = m_lang2;
	}
	public int getM_lang1num() {
		return m_lang1num;
	}
	public void setM_lang1num(int m_lang1num) {
		this.m_lang1num = m_lang1num;
	}
	public int getM_lang2num() {
		return m_lang2num;
	}
	public void setM_lang2num(int m_lang2num) {
		this.m_lang2num = m_lang2num;
	}
	public String getM_title() {
		return m_title;
	}
	public void setM_title(String m_title) {
		this.m_title = m_title;
	}
	public String getM_summary() {
		return m_summary;
	}
	public void setM_summary(String m_summary) {
		this.m_summary = m_summary;
	}
	public String getM_content() {
		return m_content;
	}
	public void setM_content(String m_content) {
		this.m_content = m_content;
	}
	public String getM_meetingDate() {
		return m_meetingDate;
	}
	public void setM_meetingDate(String m_meetingDate) {
		this.m_meetingDate = m_meetingDate;
	}
	public String getM_partDate() {
		return m_partDate;
	}
	public void setM_partDate(String m_partDate) {
		this.m_partDate = m_partDate;
	}
	public String getM_place() {
		return m_place;
	}
	public void setM_place(String m_place) {
		this.m_place = m_place;
	}
	public String getM_location() {
		return m_location;
	}
	public void setM_location(String m_location) {
		this.m_location = m_location;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_tel() {
		return m_tel;
	}
	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}
	public String getM_end() {
		return m_end;
	}
	public void setM_end(String m_end) {
		this.m_end = m_end;
	}
}
