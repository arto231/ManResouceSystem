package action.Pay;

import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import po.tb_employee;
import po.tb_pay;
import actionSum.ActionSum;

public class Pay_querryAction extends ActionSum{
	@Override
	public String execute() throws Exception {
		ArrayList<tb_pay> reult;
		try {
			reult=server.querryAll(tb_pay.class);
			ServletActionContext.getRequest().setAttribute(PAY_QUERRY_MARK,reult);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName() + "."
					+ Thread.currentThread().getStackTrace()[1].getMethodName()
					+ " falied");
		}
		return ERROR;
	}
	}