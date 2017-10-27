package action.Train;

import java.util.Date;

import po.tb_train;

import actionSum.ActionAddSum;

public class Train_addAction extends ActionAddSum{
	public String tn_man;
	public String tn_title;
	private String tn_content;//培训内容
	private String tn_time;//培训时间
	private String tn_address;//培训地址
	private String tn_join;//部门
	private String tn_bz;//备注
	private Date tn_recordTime;
	
	



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


@Override
public String execute() throws Exception {
	if (isNull())
		return ERROR;
	tb_train train=new tb_train();
	train.setTn_man(tn_man);
	train.setTn_title(tn_title);
	train.setTn_content(tn_content);
	train.setTn_time(tn_time);
	train.setTn_address(tn_address);
	train.setTn_join(tn_join);
	train.setTn_bz(tn_bz);
	try {
		server.add(train);
		return SUCCESS;
	} catch (Exception e) {
		System.out.println("添加失败");
	}
	return ERROR;
}




@Override
public boolean isNull() {
	if(isNotStringNullValue(getTn_man())
			&&isNotStringNullValue(getTn_title())
			&&isNotStringNullValue(getTn_content())
			&&isNotStringNullValue(getTn_address())
			&&isNotStringNullValue(getTn_join()))
		return false;
	
	return true;
}
}
