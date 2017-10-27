package action.Department;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import po.tb_department;

import MyTool.CutPages;
import MyTool.PageModel;
import actionSum.ActionSum;

public class Department_querryAction extends ActionSum{
	public CutPages cutpage;
	public int pageSize=5;//默认每页分页大小为5条
	public int pageNo=1;

	@Override
	public String execute() throws Exception {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		ArrayList<PageModel<tb_department>> reult=(ArrayList<PageModel<tb_department>>) request.getSession().getAttribute("pages");
		try {
			if(reult==null){//如果session中没有所有page信息，则从数据库查询，并把分页结果放到 pages session中
			
				reult=cutpage.cutpage(pageSize, pageNo, server.querryAll(tb_department.class));
					request.getSession().setAttribute("pages",reult );
			}
			
			request.setAttribute(DEPARTMENT_QUERRY_MARK,reult.get(pageNo));
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
