package action.Employee;

import po.tb_employee;
import MyTool.MyTool;
import actionSum.ActionAddSum;
import actionSum.ActionSum;

public class Employee_addAction extends ActionAddSum{
	public MyTool mytool;
	
	public String em_name;
	public String em_sex;
	public String em_IDCard;
	public String em_nation;
	public String em_marriage;
	public String em_visage;
	public String em_ancestralHome;// 籍贯
	public String em_tel;
	public String em_address;
	public String em_afterSchool;
	public String em_specially;
	public String em_culture;
	public String em_startime;
	public String em_departmentId;
	public String em_typeWork;
	public String em_createName;
	public String em_bz;
	


	@Override
	public String execute() throws Exception {
		if(isNull())
			return ERROR;
		try {
			tb_employee addemployee = new tb_employee();
			addemployee.setEm_serialNumber(mytool.getEmployeeSerialNumber());
			addemployee.setEm_name(em_name);
			addemployee.setEm_sex(em_sex);
			addemployee.setEm_age(mytool.getEmployeeAge(em_IDCard));
			addemployee.setEm_IDCard(em_IDCard);
			addemployee.setEm_born(mytool.getEm_born(em_IDCard));
			addemployee.setEm_nation(em_nation);
			addemployee.setEm_marriage(em_marriage);
			addemployee.setEm_visage(em_visage);
			addemployee.setEm_ancestralHome(em_ancestralHome);
			addemployee.setEm_tel(em_tel);
			addemployee.setEm_address(em_address);
			addemployee.setEm_afterSchool(em_afterSchool);
			addemployee.setEm_specially(em_specially);
			addemployee.setEm_culture(em_culture);
			addemployee.setEm_startime(em_startime);

			addemployee.setEm_departmentId(em_departmentId);
			addemployee.setEm_typeWork(em_typeWork);

			addemployee.setEm_createName(em_createName);
			addemployee.setEm_bz(em_bz);

			server.add(addemployee);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName() + "."
					+ Thread.currentThread().getStackTrace()[1].getMethodName()
					+ " falied");
			
			return ERROR;
		}

		return SUCCESS;
	}

	@Override
	public boolean isNull() {
		if (isNotStringNullValue(getEm_name())
				&& isNotStringNullValue(getEm_sex())
				&& isNotStringNullValue(getEm_IDCard())
				&& isNotStringNullValue(getEm_tel())
				&& isNotStringNullValue(getEm_address())
				&&isNotStringNullValue(getEm_afterSchool())
				&&isNotStringNullValue(getEm_specially())
				&& isNotStringNullValue(getEm_culture())
				&& isNotStringNullValue(getEm_startime())
				&& isNotStringNullValue(getEm_departmentId())
				&& isNotStringNullValue(getEm_typeWork()))
			return false;
		return true;
	}
	public String getEm_name() {
		return em_name;
	}

	public void setEm_name(String em_name) {
		this.em_name = em_name;
	}

	public String getEm_sex() {
		return em_sex;
	}

	public void setEm_sex(String em_sex) {
		this.em_sex = em_sex;
	}

	public String getEm_IDCard() {
		return em_IDCard;
	}

	public void setEm_IDCard(String em_IDCard) {
		this.em_IDCard = em_IDCard;
	}

	public String getEm_nation() {
		return em_nation;
	}

	public void setEm_nation(String em_nation) {
		this.em_nation = em_nation;
	}

	public String getEm_marriage() {
		return em_marriage;
	}

	public void setEm_marriage(String em_marriage) {
		this.em_marriage = em_marriage;
	}

	public String getEm_visage() {
		return em_visage;
	}

	public void setEm_visage(String em_visage) {
		this.em_visage = em_visage;
	}

	public String getEm_ancestralHome() {
		return em_ancestralHome;
	}

	public void setEm_ancestralHome(String em_ancestralHome) {
		this.em_ancestralHome = em_ancestralHome;
	}

	public String getEm_tel() {
		return em_tel;
	}

	public void setEm_tel(String em_tel) {
		this.em_tel = em_tel;
	}

	public String getEm_address() {
		return em_address;
	}

	public void setEm_address(String em_address) {
		this.em_address = em_address;
	}

	public String getEm_afterSchool() {
		return em_afterSchool;
	}

	public void setEm_afterSchool(String em_afterSchool) {
		this.em_afterSchool = em_afterSchool;
	}

	public String getEm_specially() {
		return em_specially;
	}

	public void setEm_specially(String em_specially) {
		this.em_specially = em_specially;
	}

	public String getEm_culture() {
		return em_culture;
	}

	public void setEm_culture(String em_culture) {
		this.em_culture = em_culture;
	}

	public String getEm_startime() {
		return em_startime;
	}

	public void setEm_startime(String em_startime) {
		this.em_startime = em_startime;
	}

	public String getEm_departmentId() {
		return em_departmentId;
	}

	public void setEm_departmentId(String em_departmentId) {
		this.em_departmentId = em_departmentId;
	}

	public String getEm_typeWork() {
		return em_typeWork;
	}

	public void setEm_typeWork(String em_typeWork) {
		this.em_typeWork = em_typeWork;
	}

	public String getEm_createName() {
		return em_createName;
	}

	public void setEm_createName(String em_createName) {
		this.em_createName = em_createName;
	}

	public String getEm_bz() {
		return em_bz;
	}

	public void setEm_bz(String em_bz) {
		this.em_bz = em_bz;
	}

	public MyTool getMytool() {
		return mytool;
	}

	public void setMytool(MyTool mytool) {
		this.mytool = mytool;
	}
	
	}
