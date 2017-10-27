package action.Wanted;

import po.tb_invitejob;
import actionSum.ActionAddSum;
import actionSum.ActionSum;

public class Wanted_addAction extends ActionAddSum{
	public String name;
	public String sex;
	public int age;
	public String born;
	public String job;
	public String specially;
	public String experience;
	public String teachSchool;
	public String afterSchool;
	public String tel;
	public String address;
	public String content;

	public int istoken = 0;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getBorn() {
		return born;
	}

	public void setBorn(String born) {
		this.born = born;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getSpecially() {
		return specially;
	}

	public void setSpecially(String specially) {
		this.specially = specially;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getTeachSchool() {
		return teachSchool;
	}

	public void setTeachSchool(String teachSchool) {
		this.teachSchool = teachSchool;
	}

	public String getAfterSchool() {
		return afterSchool;
	}

	public void setAfterSchool(String afterSchool) {
		this.afterSchool = afterSchool;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	

	@Override
	public String execute() throws Exception {
		if (isNull())
			return ERROR;
		tb_invitejob addInvite = new tb_invitejob();
		addInvite.setName(name);
		addInvite.setSex(sex);
		addInvite.setAge(age);
		addInvite.setBorn(born);
		addInvite.setJob(job);
		addInvite.setSpecially(specially);
		addInvite.setExperience(experience);
		addInvite.setTeachSchool(teachSchool);
		addInvite.setAfterSchool(afterSchool);
		addInvite.setTel(tel);
		addInvite.setAddress(address);
		addInvite.setContent(content);
		addInvite.setIsstock(istoken);
		try {
			server.add(addInvite);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("登记应聘信息失败");
			// TODO: handle exception
		}

		return ERROR;
	}

	@Override
	public boolean isNull() {
		if (isNotStringNullValue(getName()) && isNotStringNullValue(getTel()))
			return false;
		
		return true;
	}
}