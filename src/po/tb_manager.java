package po;

import java.sql.Date;




/**
 * ����Ա��Ϣ��
 * */
public class tb_manager extends table{
private int id;//�Զ����
private String acount;//����Ա�˺�
private String password;//����Ա����
private char managerLevel;//����Ա����
private Date recordDate;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getAcount() {
	return acount;
}
public void setAcount(String acount) {
	this.acount = acount;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public char getManagerLevel() {
	return managerLevel;
}
public void setManagerLevel(char managerLevel) {
	this.managerLevel = managerLevel;
}
public Date getRecordDate() {
	return recordDate;
}
public void setRecordDate(Date recordDate) {
	this.recordDate = recordDate;
}


}
