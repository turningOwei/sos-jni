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
import monitor.service.smokesensor.SmokeSensorService;
import monitor.service.smokesensor.http.SmokeSensorEntity;

@Controller
@RequestMapping(value = "/smokesensor")
public class SmokeSensorController {
	@Autowired
	private SmokeSensorService smokeSensorService;
	
	@RequestMapping(value = "/smokeSensorInfo")
	@ResponseBody
	public String smokeSensorInfo(ModelMap m){
		List<SmokeSensorEntity> list;
		Map<String,Object> map = new HashMap<String,Object>();
		Gson gson = new Gson();
		try {
			list = smokeSensorService.listSmokeSensorInfo();
			map.put("items", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return gson.toJson(map);
	}
}
