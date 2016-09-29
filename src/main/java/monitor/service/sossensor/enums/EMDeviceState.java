package monitor.service.sossensor.enums;

//设备状态参考信息
public enum EMDeviceState {

	stateMC(0,"服务器寻呼"),
	stateWarning(1,"告警"),
	stateCalled(2,"被寻呼"),
	stateCall(3,"发起寻呼"),
	stateTalk(4,"对讲"),
	statePhone(5,"电话"),
	stateChime(6,"钟声"),
	stateMusic(7,"服务器广播节目或者采集音源"),
	stateOrder(8,"点播"),
	stateTime(9,"定时"),
	stateOFFLINE(14,"离线"),
	stateTraning(15,"中转中,中转服务器的状态"),
	stateCollecting(16,"正在采集中,音频采集卡状态"),
	stateTouchWarning(17,"网络警报设备,触发警报中"),
	stateControlOtherDevPlayMusicing(18,"控制其它设备播放广播"),
	stateMonitor(19,"监听状态"),
	stateFireWarning(20,"消防告警"),
	stateLowest(31,"空闲");
	
	private int code;
	private String name;
	private EMDeviceState(int code,String name){
		this.code = code;
		this.name = name;
	}
	public int getCode() {
		return code;
	}
	public String getName() {
		return name;
	}

}
