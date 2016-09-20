package sos_jni.service.smokesensor.http;

import java.util.List;

public class SmokeSensorResp<T> {
	
	private String resultCode; 
	
	private List<T> data;
	
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	
	
	
}
