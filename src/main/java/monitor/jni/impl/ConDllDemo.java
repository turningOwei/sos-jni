package monitor.jni.impl;

import monitor.jni.SosJni;

public class ConDllDemo implements SosJni{
	public static final String LOCAL_IP = "192.168.2.223";
	public static final String SERVER_IP = "192.168.40.250";
	public static final int LOCAL_DEVICE_ID = -10000;
	static{
		//C:\software\dll
		//System.loadLibrary("NetServerInterface");
		//System.load("C://software//dll//NetServerInterface.lib");
		//System.load("C://software//dll//NetServerInterface.dll");
	}
	
	public  native static boolean InitNetwork(char LocalIP[],char ServerIP[],int LocalDeviceID);
	
	public native static boolean GetOnlineStatus();
	
	public static void main(String[] args) {
		char localIp[] = LOCAL_IP.toCharArray();
		char serverId[] = SERVER_IP.toCharArray();
		//System.out.println(ConDll.InitNetwork(localIp, serverId, LOCAL_DEVICE_ID));
		System.out.println(ConDllDemo.GetOnlineStatus());
		
	}
}
