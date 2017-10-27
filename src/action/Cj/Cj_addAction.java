package action.Cj;


import po.tb_cj;
import actionSum.ActionAddSum;
import actionSum.ActionSum;

public class Cj_addAction extends ActionAddSum{
	private String cj_title;// ���ͱ���
	private String cj_type;// ��������
	private String cj_content;// ��������
	private int cj_money;// ���
	private String cj_time;
	
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

	@Override
	public String execute() throws Exception {
		if(isNull()){
			return ERROR;
		}
		tb_cj cj = new tb_cj();
		cj.setCj_title(cj_title);
		cj.setCj_type(cj_type);
		cj.setCj_content(cj_content);
		cj.setCj_money(cj_money);
		cj.setCj_time(cj_time);
		try {
			
			super.server.add(cj);

			return SUCCESS;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName() + "."
					+ Thread.currentThread().getStackTrace()[1].getMethodName()
					+ " falied");
		}

		return ERROR;
	}

	@Override
	public boolean isNull() {
		if (isNotStringNullValue(getCj_title())
				&& isNotStringNullValue(getCj_type())
				&& isNotStringNullValue(getCj_content())
				&&isNotIntegerNullValue(getCj_money()))
			return false;
		return true;
	}
	}
