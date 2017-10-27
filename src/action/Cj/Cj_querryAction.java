package action.Cj;

import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import po.tb_cj;
import po.tb_department;
import actionSum.ActionSum;

public class Cj_querryAction extends ActionSum{
	@Override
	public String execute() throws Exception {
		ArrayList<tb_cj> reult;
		try {
			reult=server.querryAll(tb_cj.class);
			ServletActionContext.getRequest().setAttribute(CJ_QUERRY_MARK,reult);
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
