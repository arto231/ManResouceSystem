package action.Train;

import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import po.tb_pay;
import po.tb_train;
import actionSum.ActionSum;

public class Train_querryAction extends ActionSum{
	@Override
	public String execute() throws Exception {
		ArrayList<tb_train> reult;
		try {
			reult=server.querryAll(tb_train.class);
			ServletActionContext.getRequest().setAttribute(TRAIN_QUERRY_MARK,reult);
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