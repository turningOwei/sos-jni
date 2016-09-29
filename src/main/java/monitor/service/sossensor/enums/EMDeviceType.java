package monitor.service.sossensor.enums;

public enum EMDeviceType {
	devOneChaPlaying(1,"网络化播放终端"),
	devMoreChaPlaying(2,"机架式网络化终端"),
	devOneKeyTalkPlaying(3,"求助对讲扩展控制器"),
	devOneChaOrderPlaying(4,"网络化点播面板"),
	devOneChaPhonePlaying(5,"网络化工业电话对讲终端"),
	devTwoKeyTalkPlaying(6,"两用对讲扩展控制器"),
	devOneKeyAlarmPlaying(7,"网络化报警终端"),
	devWirelessRemotePlaying(8,"无线遥控控制器"),
	devHangingCalling(9,"挂壁式智能寻呼台"),
	devCallingPlaying(10,"寻呼播放设备"),
	devCallingWatch(11,"寻呼监视设备"),
	devCalling(12,"智能寻呼站"),
	devSoundBoxPlaying(13,"网络化音箱"),
	devWIFISoundBoxPlaying(14,"网络化WIFI音箱"),
	devPowerPlayPlaying(15,"网络化播放功放"),
	devPoleAlarmPlaying(16,"网络化柱式报警终端"),
	devCollection(20,"音频采集卡"),
	devTelephoneCalling(21,"电话寻呼卡"),
	devPCSubControl(30,"网络化分控寻呼软件"),
	devHandsetControl(31,"安桌分控寻呼软件"),
	devSDKSystem(32,"第三方系统"),
	devTransferServer(40,"中转服务器"),
	devSubServer(41,"二级主机"),
	devPCHostControl(50,"PC远程控制软件"),
	devNetAlarm(51,"网络消防联动终端"),
	devNULL(0,"空的设备类型");
	
	private int code;
	private String name;
	private EMDeviceType(int code,String name){
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
