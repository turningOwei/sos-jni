package sos_jni.service.smokesensor.http;

public class SmokeSensorEntity {
	private String nodeId;
	private String name;
	private String position;
	private Boolean isAlarm;
	public String getNodeId() {
		return nodeId;
	}
	public void setNodeId(String nodeId) {
		this.nodeId = nodeId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Boolean getIsAlarm() {
		return isAlarm;
	}
	public void setIsAlarm(Boolean isAlarm) {
		this.isAlarm = isAlarm;
	}
	
}
