package action.Employee;

import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import po.tb_cj;
import po.tb_employee;
import actionSum.ActionSum;

public class Employee_querryAction extends ActionSum{
	@Override
	public String execute() throws Exception {
		ArrayList<tb_employee> reult;
		try {
			reult=server.querryAll(tb_employee.class);
			ServletActionContext.getRequest().setAttribute(EMPLOYEE_QUERRY_MARK,reult);
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
