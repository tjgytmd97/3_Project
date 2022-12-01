package com.flask.entity;

public class Flask {
	private int m_no;
	private String result;
	private String resource;
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getResource() {
		return resource;
	}
	public void setResource(String resource) {
		this.resource = resource;
	}
	public Flask(int m_no, String result, String resource) {
		super();
		this.m_no = m_no;
		this.result = result;
		this.resource = resource;
	}
	
	
	
}	
