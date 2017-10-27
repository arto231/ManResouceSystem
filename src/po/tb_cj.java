package po;

import java.sql.Date;




/**
 * Ա��������Ϣ��
 * */
public class tb_cj extends table{
private int id;
private String cj_title;//奖励标题
private String cj_type;//奖惩类型
private String cj_content;//具体事件
private int cj_money;//金额
private String cj_time;
private Date cj_recordTime;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCj_title() {
	return cj_title;
}
public void setCj_title(String cj_title) {
	this.cj_title = cj_title;
}
public String getCj_type() {
	return cj_type;
}
public void setCj_type(String cj_type) {
	this.cj_type = cj_type;
}
public String getCj_content() {
	return cj_content;
}
public void setCj_content(String cj_content) {
	this.cj_content = cj_content;
}
public int getCj_money() {
	return cj_money;
}
public void setCj_money(int cj_money) {
	this.cj_money = cj_money;
}
public String getCj_time() {
	return cj_time;
}
public void setCj_time(String cj_time) {
	this.cj_time = cj_time;
}
public Date getCj_recordTime() {
	return cj_recordTime;
}
public void setCj_recordTime(Date cj_recordTime) {
	this.cj_recordTime = cj_recordTime;
}


}
