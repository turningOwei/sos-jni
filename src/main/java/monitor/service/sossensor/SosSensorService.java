package monitor.service.sossensor;

import java.util.List;

import monitor.service.sossensor.http.SosSensorData;

public interface SosSensorService { 
	
	public List<SosSensorData> listSosSensorData() throws Exception;
	
	public List<SosSensorData> listSosSensorDataByDevType(int[] devTypeIds);
}
