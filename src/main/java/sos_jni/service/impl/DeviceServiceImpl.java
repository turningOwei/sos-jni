package sos_jni.service.impl;

import java.util.ArrayList;
import java.util.List;

import sos_jni.domain.Device;
import sos_jni.service.DeviceService;

public class DeviceServiceImpl implements DeviceService {

	@Override
	public List<Device> listDevices() {
		Device device = new Device();
		device.setDeviceId("");
		device.setDeviceIp("");
		device.setDeviceOtherInfo("其他信息1");
		device.setDeviceStatus("1");
		device.setDeviceType("1");
		device.setDeviceVolume("10分贝");
		
		Device device1 = new Device();
		device1.setDeviceId("");
		device1.setDeviceIp("");
		device1.setDeviceOtherInfo("其他信息2");
		device1.setDeviceStatus("2");
		device1.setDeviceType("2");
		device1.setDeviceVolume("20分贝");
		
		List<Device> list = new ArrayList<Device>();
		list.add(device);
		list.add(device1);
		return list;
	}

}
