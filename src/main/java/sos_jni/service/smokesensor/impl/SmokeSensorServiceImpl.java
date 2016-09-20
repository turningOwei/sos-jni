package sos_jni.service.smokesensor.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import sos_jni.service.smokesensor.SmokeSensorService;
import sos_jni.service.smokesensor.enums.SmokeSensorRespResouceCode;
import sos_jni.service.smokesensor.http.SmokeSensorEntity;
import sos_jni.service.smokesensor.http.SmokeSensorReq;
import sos_jni.service.smokesensor.http.SmokeSensorResp;
import sos_jni.util.HttpObject;

public class SmokeSensorServiceImpl
		implements SmokeSensorService {
	private static String url = "http://139.196.205.159:8080/teemax-xcdfs-environment-detection/api/envsound?method=getSmokeAlarmData&callback=";
	@Override
	public List<SmokeSensorEntity> listSmokeSensorInfo() throws Exception {
		SmokeSensorReq param = new SmokeSensorReq();
		param.setUrl(url);
		String jsonp = HttpObject.getJsonByGet(param.getUrl());
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		SmokeSensorResp<SmokeSensorEntity> result = null;
		String json = jsonp.substring(1, jsonp.length()-2);
		if (StringUtils.isNotEmpty(json)) {
			result = gson.fromJson(json,
					new TypeToken<SmokeSensorResp<SmokeSensorEntity>>() {
					}.getType());
			if(result == null){
				throw new Exception("获取烟感信息失败,信息:"+jsonp);
			}
			if(!result.getResultCode().equals(SmokeSensorRespResouceCode.Success.name())){
				throw new Exception("获取烟感信息失败,信息:"+jsonp);
			}
		}else{
			throw new Exception("获取值为空,地址为"+url);
		}
		return result.getData();
	}
	

}
