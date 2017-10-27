package action.Department;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import po.tb_department;

import MyTool.CutPages;
import actionSum.ActionSum;

public class Department_querryAction extends ActionSum{
	public CutPages cutpage;
	public int pageSize=5;
	public int pageNo=1;

	@Override
	public String execute() throws Exception {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		ArrayList<tb_department> reult=(ArrayList<tb_department>) request.getSession().getAttribute(DEPARTMENT_QUERRY_MARK);
		try {
			if(reult==null){
			reult=server.querryAll(tb_department.class);
			}
			
			request.getSession().setAttribute(DEPARTMENT_QUERRY_MARK,reult);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName() + "."
					+ Thread.currentThread().getStackTrace()[1].getMethodName()
					+ " falied");
			
		}
		
		return ERROR;
		
		
		
	}
	
	public CutPages getCutpage() {
		return cutpage;
	}
	public void setCutpage(CutPages cutpage) {
		this.cutpage = cutpage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	
	}
