package action.Wanted;

import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import po.tb_invitejob;
import po.tb_train;
import actionSum.ActionSum;

public class Wanted_querryAction extends ActionSum{
	@Override
	public String execute() throws Exception {
		ArrayList<tb_invitejob> reult;
		try {
			reult=server.querryAll(tb_invitejob.class);
			ServletActionContext.getRequest().setAttribute(WANTED_QUERRY_MARK,reult);
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