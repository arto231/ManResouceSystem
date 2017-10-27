package actionSum;

import com.opensymphony.xwork2.ActionSupport;

import server.Server;

public  class ActionSum extends ActionSupport{
	{
		
	}
	
	//public static final int LOGIN_MANA_ACCOUNT=0x11;//登录账户在map中的标识符
	//public static final int LOGIN_MANA_LEVEL=0x12;//登录账户等级在map中的标识符
	public  final String USER_MARK="user";//登录信息的标识符
	public  final String MANA_LOGIN_SUCCESS="mana_login_success";//登录成功返回String
	public  final String MANA_LOGIN_FILED="mana_login_filed";//登录失败返回String
	public  final String MANA_LOGIN_PASSWORD_ERROR="密码错误";//登录失败返回String
	public  final String MANA_LOGIN_PASSWORD_PASSED="pass";//登录成功
	public  final String MANA_LOGIN_PASSWORD_UNKNOW="unknow";//登录失败返回String
	public  final char SYSTEM_MANAGET='1';//系统管理员
	public  final char GENERAL_MANAGET='0';//普通管理员
	public  final String DEPARTMENT_QUERRY_MARK="department_info";//部门信息查询结果返回
	public  final String MANA_QUERRY_MARK="mana_info";//管理员信息查询结果返回
	public  final String CJ_QUERRY_MARK="cj_info";//cj信息查询结果返回
	public  final String PAY_QUERRY_MARK="pay_info";//pay信息查询结果返回
	public  final String TRAIN_QUERRY_MARK="train_info";//train信息查询结果返回
	public  final String WANTED_QUERRY_MARK="wanted_info";//wanted信息查询结果返回
	public  final String EMPLOYEE_QUERRY_MARK="employee_info";//employee信息查询结果返回
public Server server;

public Server getServer() {
	return server;
}

public void setServer(Server server) {
	this.server = server;
}


}
