package sos_jni.service.smokesensor;

import java.util.List;

import sos_jni.service.smokesensor.http.SmokeSensorEntity;

public interface SmokeSensorService {
	public List<SmokeSensorEntity> listSmokeSensorInfo()throws Exception ;
}
 