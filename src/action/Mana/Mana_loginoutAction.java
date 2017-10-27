package action.Mana;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import actionSum.ActionSum;

public class Mana_loginoutAction extends ActionSum{
@Override
/**
 * 退出登录
 * 
 * **/
public String execute() throws Exception {
	HttpServletRequest request=ServletActionContext.getRequest();
	
	if(request.getSession().getAttribute(USER_MARK)!=null){
		request.getSession().removeAttribute(USER_MARK);
	}
	return SUCCESS;
}
}
