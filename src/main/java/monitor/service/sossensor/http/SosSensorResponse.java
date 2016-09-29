package monitor.service.sossensor.http;

import java.util.List;

public class SosSensorResponse<T> {
	
	public Boolean Result;
	public Integer Count;
	public String Msg;
	public List<T> Data;
	
	public Boolean getResult() {
		return Result;
	}
	public void setResult(Boolean result) {
		Result = result;
	}
	public Integer getCount() {
		return Count;
	}
	public void setCount(Integer count) {
		Count = count;
	}
	public String getMsg() {
		return Msg;
	}
	public void setMsg(String msg) {
		Msg = msg;
	}
	public List<T> getData() {
		return Data;
	}
	public void setData(List<T> data) {
		Data = data;
	}
	
	
}
