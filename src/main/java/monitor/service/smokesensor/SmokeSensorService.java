package monitor.service.smokesensor;

import java.util.List;

import monitor.service.smokesensor.http.SmokeSensorEntity;

public interface SmokeSensorService {
	public List<SmokeSensorEntity> listSmokeSensorInfo()throws Exception ;
}
 