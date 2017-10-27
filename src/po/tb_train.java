package po;

import java.sql.Date;



/**
 * ��ѵ��Ϣ��
 * */
public class tb_train extends table{
private int id;
private String tn_man;//��ѵ��Ա����
private String tn_title;//��ѵ����
private String tn_content;//��ѵ����
private String tn_time;//��ѵʱ��
private String tn_address;//��ѵ��ַ
private String tn_join;//����
private String tn_bz;//��ע
private Date tn_recordTime;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTn_man() {
	return tn_man;
}
public void setTn_man(String tn_man) {
	this.tn_man = tn_man;
}
public String getTn_title() {
	return tn_title;
}
public void setTn_title(String tn_title) {
	this.tn_title = tn_title;
}
public String getTn_content() {
	return tn_content;
}
public void setTn_content(String tn_content) {
	this.tn_content = tn_content;
}
public String getTn_time() {
	return tn_time;
}
public void setTn_time(String tn_time) {
	this.tn_time = tn_time;
}
public String getTn_address() {
	return tn_address;
}
public void setTn_address(String tn_address) {
	this.tn_address = tn_address;
}
public String getTn_join() {
	return tn_join;
}
public void setTn_join(String tn_join) {
	this.tn_join = tn_join;
}
public String getTn_bz() {
	return tn_bz;
}
public void setTn_bz(String tn_bz) {
	this.tn_bz = tn_bz;
}
public Date getTn_recordTime() {
	return tn_recordTime;
}
public void setTn_recordTime(Date tn_recordTime) {
	this.tn_recordTime = tn_recordTime;
}

}
