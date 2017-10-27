package action.Pay;

import actionSum.ActionAddSum;
import actionSum.ActionSum;

public class Pay_addAction extends ActionAddSum{
	private String pay_emNumber;//员工编号
	private String pay_emName;//员工姓名

	private String pay_month;//发放工资时间
	private int pay_baseMoney;//基本工资

	private int pay_overtime;//加班费
	private int pay_age;//工龄
	private int pay_check;//考勤费
	private int pay_absent;//旷工费
	private int pay_safety;//保险费
	
	public String getPay_emNumber() {
		return pay_emNumber;
	}
	public void setPay_emNumber(String pay_emNumber) {
		this.pay_emNumber = pay_emNumber;
	}
	public String getPay_emName() {
		return pay_emName;
	}
	public void setPay_emName(String pay_emName) {
		this.pay_emName = pay_emName;
	}
	public String getPay_month() {
		return pay_month;
	}
	public void setPay_month(String pay_month) {
		this.pay_month = pay_month;
	}
	public int getPay_baseMoney() {
		return pay_baseMoney;
	}
	public void setPay_baseMoney(int pay_baseMoney) {
		this.pay_baseMoney = pay_baseMoney;
	}
	public int getPay_overtime() {
		return pay_overtime;
	}
	public void setPay_overtime(int pay_overtime) {
		this.pay_overtime = pay_overtime;
	}
	public int getPay_age() {
		return pay_age;
	}
	public void setPay_age(int pay_age) {
		this.pay_age = pay_age;
	}
	public int getPay_check() {
		return pay_check;
	}
	public void setPay_check(int pay_check) {
		this.pay_check = pay_check;
	}
	public int getPay_absent() {
		return pay_absent;
	}
	public void setPay_absent(int pay_absent) {
		this.pay_absent = pay_absent;
	}
	public int getPay_safety() {
		return pay_safety;
	}
	public void setPay_safety(int pay_safety) {
		this.pay_safety = pay_safety;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}

	@Override
	public boolean isNull() {
		// TODO Auto-generated method stub
		return false;
	}
	}
