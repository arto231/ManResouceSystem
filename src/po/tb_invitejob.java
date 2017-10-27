package po;

import java.sql.Date;

/**
 * ��Ƹ��Ϣ��
 * */
public class tb_invitejob  extends table{
	private int id;// �Զ����
	private String name;// ӦƸ��Ա����
	private String sex;// ӦƸ��Ա�Ա�
	private int age;// ӦƸ��Ա����
	private String born;// ӦƸ��Ա��������
	private String job;// ӦƸ��λ
	private String specially;// ӦƸ��Ա��ѧרҵ
	private String experience;// ӦƸ��Ա��������
	private String teachSchool;// ӦƸ��Ա�Ļ��̶�
	private String afterSchool;// ӦƸ��Ա��ҵѧУ
	private String tel;// ӦƸ��Ա��ϵ�绰
	private String address;// ӦƸ��Ա��ͥסַ
	private String createtime;// �Ǽ�ʱ��
	private Date registerDate;
	private String content;// ��ע��Ϣ
	private int isstock;// �Ƿ�¼�ñ�ʾ

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

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

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getIsstock() {
		return isstock;
	}

	public void setIsstock(int isstock) {
		this.isstock = isstock;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

}
