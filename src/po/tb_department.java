package po;

import java.sql.Date;



/**
 * ������Ϣ��
 * */
public class tb_department extends table{
private int id;
private String dt_name;//��������
private String dt_creatime;
private String dt_bz;//��ע��Ϣ
private Date dt_recordTime;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getDt_name() {
	return dt_name;
}
public void setDt_name(String dt_name) {
	this.dt_name = dt_name;
}
public String getDt_creatime() {
	return dt_creatime;
}
public void setDt_creatime(String dt_creatime) {
	this.dt_creatime = dt_creatime;
}
public String getDt_bz() {
	return dt_bz;
}
public void setDt_bz(String dt_bz) {
	this.dt_bz = dt_bz;
}
public Date getDt_recordTime() {
	return dt_recordTime;
}
public void setDt_recordTime(Date dt_recordTime) {
	this.dt_recordTime = dt_recordTime;
}

}
