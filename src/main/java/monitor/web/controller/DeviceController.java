package monitor.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import monitor.domain.Device;
import monitor.service.DeviceService;
@Controller
@RequestMapping(value = "/sos")
public class DeviceController {
	@Autowired
	private DeviceService deviceService;
	
	@RequestMapping(value = "/deviceInfo")
	@ResponseBody
	public String deviceInfo(ModelMap m){
		List<Device> list = deviceService.listDevices();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("items", list);
		Gson gson = new Gson();
		return gson.toJson(map);
	}
}
