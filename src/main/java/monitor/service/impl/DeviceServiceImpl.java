package monitor.service.impl;

import java.util.ArrayList;
import java.util.List;

import monitor.domain.Device;
import monitor.service.DeviceService;

public class DeviceServiceImpl implements DeviceService {

	@Override
	public List<Device> listDevices() {
		/*Device device = new Device();
		device.setDeviceId("");
		device.setDeviceIp("192.168.255.255");
		device.setDeviceOtherInfo("其他信息1");
		device.setDeviceStatus("1");
		device.setDeviceType("1");
		device.setDeviceVolume("10分贝");*/

		Device device1 = new Device();
		device1.setDeviceId("");
		device1.setDeviceIp("");
		device1.setDeviceOtherInfo("其他信息2");
		device1.setDeviceStatus("2");
		device1.setDeviceType("2");
		device1.setDeviceVolume("20分贝");

		List<Device> list = new ArrayList<Device>();
		list.add(device1);
		return list;
	}

}
