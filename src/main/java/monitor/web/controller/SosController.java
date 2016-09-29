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

import monitor.service.sossensor.SosSensorService;
import monitor.service.sossensor.enums.EMDeviceType;
import monitor.service.sossensor.http.SosSensorData;

@Controller
@RequestMapping(value = "/sosDevice")
public class SosController {
	@Autowired
	private SosSensorService sosSensorService;
	
	@RequestMapping(value = "/devi")
	public String sos(ModelMap m){
		m.put("testData", "helloJsp");
		return "index";
	}
	
	
	@RequestMapping(value = "/deviceInfo")
	@ResponseBody
	public String deviceInfo(ModelMap m){
		/**
		 * 采购的是网络化报警终端
		 */
		int[] devTypeIds = {EMDeviceType.devOneKeyAlarmPlaying.getCode()};
		List<SosSensorData> list = sosSensorService.listSosSensorDataByDevType(devTypeIds);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("items", list);
		Gson gson = new Gson();
		return gson.toJson(map);
	}
}
