package monitor.service.sossensor.http;

public class SosSensorData {
	private	Integer	devId            ;
	private	String	devIp            ;
	private	String	devName          ;
	private	Integer	devType          ;
	private	Integer	devState         ;
	private	Integer	devVolume        ;
	private	String	remark           ;
	
	
	public Integer getDevId() {
		return devId;
	}
	public void setDevId(Integer devId) {
		this.devId = devId;
	}
	public String getDevIp() {
		return devIp;
	}
	public void setDevIp(String devIp) {
		this.devIp = devIp;
	}
	public String getDevName() {
		return devName;
	}
	public void setDevName(String devName) {
		this.devName = devName;
	}
	public Integer getDevType() {
		return devType;
	}
	public void setDevType(Integer devType) {
		this.devType = devType;
	}
	public Integer getDevState() {
		return devState;
	}
	public void setDevState(Integer devState) {
		this.devState = devState;
	}
	public Integer getDevVolume() {
		return devVolume;
	}
	public void setDevVolume(Integer devVolume) {
		this.devVolume = devVolume;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
