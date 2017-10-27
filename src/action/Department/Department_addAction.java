package action.Department;


import org.apache.struts2.ServletActionContext;

import po.tb_department;
import server.Server;
import actionSum.ActionAddSum;
import actionSum.ActionSum;

public class Department_addAction extends ActionAddSum{
	
	
	public String dt_name;
	public String dt_bz;

	
	

	public String getDt_name() {
		return dt_name;
	}

	public void setDt_name(String dt_name) {
		this.dt_name = dt_name;
	}

	public String getDt_bz() {
		return dt_bz;
	}

	public void setDt_bz(String dt_bz) {
		this.dt_bz = dt_bz;
	}

	@Override
	public String execute() throws Exception {
		System.out.println(ServletActionContext.getRequest().getParameter("dt_name"));
		System.out.println(ServletActionContext.getRequest().getRequestURI());
		System.out.println("name:"+dt_name+"/////////"+"bz："+dt_bz);
		if (isNull())
			return ERROR;
		tb_department partment = new tb_department();
		partment.setDt_name(dt_name);
		partment.setDt_bz(dt_bz);
		try {
			
			server.add(partment);
			//添加以后移除session中原有数据。重新分页
			ServletActionContext.getRequest().getSession().removeAttribute(DEPARTMENT_QUERRY_MARK);
			return SUCCESS;
		} catch (Exception e) {
			System.out.println("���ʧ��");
		}

		return ERROR;
	}

	@Override
	public boolean isNull() {
		if (isNotStringNullValue(getDt_name()))
			return false;
		
		return true;
	}
	}
