package monitor.jni.impl;

public class TestUtil {
	private char[] LOCAL_IP = {'1','9','2','.','1','6','8','.','4','0','.','8','8','\0'};
	private char[] ip2 = {'1','9','2','.','1','6','8','.','1','2','8','.','1','2','9','\0'};
	public static void main(String[] args) {
		String ip = "192.168.128.129";
		char[] ipArr = ip.toCharArray();
		for (int i = 0; i < ipArr.length; i++) {
			System.out.println(ipArr[i]);
		}
	}
}
