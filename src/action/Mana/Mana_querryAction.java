package action.Mana;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import po.tb_manager;
import actionSum.ActionSum;

/**
 * 实现两个功能 当account,password参数不为null 执行登陆检查。 为null 则查询所有管理员等级
 * 
 * */
public class Mana_querryAction extends ActionSum {

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		if (request.getSession().getAttribute(USER_MARK) != null) {
			tb_manager info = (tb_manager) request.getSession().getAttribute(
					USER_MARK);
			if (info.getManagerLevel() == SYSTEM_MANAGET) {
				try {
					request.setAttribute(MANA_QUERRY_MARK, this.server.querryAll(tb_manager.class));
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println(this.getClass().getName() + "."
							+ Thread.currentThread().getStackTrace()[1].getMethodName()
							+ " falied");
				}
				return SUCCESS;//系统管理员返回成功
			} 

		}
		return ERROR;//普通管理员
	}

}