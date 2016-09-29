package monitor.service.sossensor.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import monitor.service.sossensor.SosSensorService;
import monitor.service.sossensor.http.SosSensorData;
import monitor.service.sossensor.http.SosSensorResponse;
import monitor.util.HttpObject;
import monitor.util.IpUtil;

public class SosSensorServiceImpl implements SosSensorService{
	private Logger log = Logger.getLogger(SosSensorServiceImpl.class);
	private static String url = "http://122.224.53.30:8888";
	@Override
	public List<SosSensorData> listSosSensorData() {
		String json = HttpObject.getJsonByGet(url);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		SosSensorResponse<SosSensorData> result = null;
		List<SosSensorData> list = new ArrayList<SosSensorData>();
		if (StringUtils.isNotEmpty(json)) {
			result = gson.fromJson(json,
					new TypeToken<SosSensorResponse<SosSensorData>>() {
					}.getType());
		}else{
			log.error("请求地址"+url+",返回空值");
		}
		if(result == null)
			return list;
		return result.getData();
	}
	
	
	@Override
	public List<SosSensorData> listSosSensorDataByDevType(int[] devTypeIds) {
		
		List<SosSensorData> list = listSosSensorData();
		List<SosSensorData> result = new ArrayList<SosSensorData>();
		if(devTypeIds == null || devTypeIds.length == 0 || list == null || list.size() ==0)
			return result;
		for (int i = 0; i < devTypeIds.length; i++) {
			int devTypeId = devTypeIds[i];
			for (int j = 0; j < list.size(); j++) {
				if(list.get(j).getDevType() == devTypeId){
					SosSensorData entity = list.get(j);
					int intIp = Integer.parseInt(entity.getDevIp());
					String strIp = IpUtil.intToIp(intIp);
					
					entity.setDevIp(ipReverse(strIp));
					result.add(entity);
				}
			}
		}
		return result;
	}
	
	private String ipReverse(String strIp){
		StringBuffer result = new StringBuffer(128);
		if(StringUtils.isNotBlank(strIp)){
			String[] arr = strIp.split("\\.");
			if(arr!=null && arr.length > 0){
				for (int i = arr.length - 1; i >=  0; i--) {
					if(i == 0){
						result.append(arr[i]);
					}else{
						result.append(arr[i]).append(".");
					}
				}
			}
		}
		return result.toString();
	}
	
	
}
