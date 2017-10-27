package MyTool;



import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import po.tb_employee;
import po.tb_logininfo;
import server.Server;


public class MyTool {
public Server employeeServer;

	public Server getEmployeeServer() {
	return employeeServer;
}
public void setEmployeeServer(Server employeeServer) {
	this.employeeServer = employeeServer;
}
	public String getIpAddr(HttpServletRequest request) {
	    String ip = request.getHeader("x-forwarded-for");
	    if(null == ip || 0 == ip.length() || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("Proxy-Client-IP");
	    }
	    if(null == ip || 0 == ip.length() || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("WL-Proxy-Client-IP");
	    }
	    if(null == ip || 0 == ip.length() || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getHeader("X-Real-IP");
	    }
	    if(null == ip || 0 == ip.length() || "unknown".equalsIgnoreCase(ip)) {
	        ip = request.getRemoteAddr();
	    }
	    return ip;
	}
	public tb_logininfo getLoginInfo(String account,HttpServletRequest request){
		String Agent = request.getHeader("User-Agent");
		StringTokenizer st = new StringTokenizer(Agent,";");
		
		tb_logininfo result=new tb_logininfo();
		
		result.setIp(this.getIpAddr(request));
		result.setAccount(account);
		result.setUserbrowser(st.nextToken());
		result.setUseros(st.nextToken());
		result.setRemoteHost(request.getRemoteHost());
		return result;
	}
	public String getEmployeeSerialNumber(){
		SimpleDateFormat format=new SimpleDateFormat("yyyyMMdd");
		String date=format.format(new Date());
		String end="";
		/**
		 * 此处不应该是获取最大员工数。生成ID
		 * **/
		int size=employeeServer.querryAll(tb_employee.class).size();
		if(size<9){
			end="000"+(size+1);
		}else if(size<99){
			end="00"+(size+1);
		}else if(size<999){
			end="0"+(size+1);
		}else {
			end=(size+1)+"";
		}
		return date+end;
	}
	public int getEmployeeAge(String em_IDCard) {//510322 199511023219
		String birthyear=em_IDCard.substring(6,10);//到指定位置-1
		String birthmonthAndDay=em_IDCard.substring(10,14);
		int birthyearR=Integer.valueOf(birthyear);
		int birthday=Integer.valueOf(birthmonthAndDay);
		int nowYear=Calendar.getInstance().get(Calendar.YEAR);
		int nowDay=Integer.valueOf(new SimpleDateFormat("MMdd").format(new Date()));
		
		if(nowDay>birthday)
			return nowYear-birthyearR-1;
		
		return nowYear-birthyearR;
	}
	public String getEm_born(String em_IDCard) {
		StringBuffer birthyear=new StringBuffer();
		birthyear.append(em_IDCard.substring(6,14));//到指定位置-1
		birthyear.insert(4, "-");
		birthyear.insert(7, "-");
		
		return birthyear.toString();
	}
}
