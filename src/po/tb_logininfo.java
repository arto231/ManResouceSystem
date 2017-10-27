package po;

import java.util.Date;

public class tb_logininfo  extends table{
public int id;	
public String account;
public String ip;
public String userbrowser;
public String useros;
public String remoteHost;//user pc name or ip
public Date login_recordTime;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getAccount() {
	return account;
}
public void setAccount(String account) {
	this.account = account;
}
public String getIp() {
	return ip;
}
public void setIp(String ip) {
	this.ip = ip;
}
public String getUserbrowser() {
	return userbrowser;
}
public void setUserbrowser(String userbrowser) {
	this.userbrowser = userbrowser;
}
public String getUseros() {
	return useros;
}
public void setUseros(String useros) {
	this.useros = useros;
}
public String getRemoteHost() {
	return remoteHost;
}
public void setRemoteHost(String remoteHost) {
	this.remoteHost = remoteHost;
}
public Date getLogin_recordTime() {
	return login_recordTime;
}
public void setLogin_recordTime(Date login_recordTime) {
	this.login_recordTime = login_recordTime;
}

}
