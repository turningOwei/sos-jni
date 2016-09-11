package sos_jni.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import sos_jni.service.NetServerInterfaceService;

@Controller
public class SosController {
	@Autowired
	private NetServerInterfaceService netServerInterfaceService;
	@RequestMapping(value = "/sos")
	public String sos(ModelMap m){
		m.put("testData", "helloJsp");
		//${testData}
		return "index";
	}
}
