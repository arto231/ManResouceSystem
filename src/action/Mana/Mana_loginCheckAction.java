package action.Mana;

import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import po.tb_logininfo;
import po.tb_manager;
import server.Server;
import MyTool.MyTool;
import actionSum.ActionAddSum;
import actionSum.ActionSum;

public class Mana_loginCheckAction extends ActionAddSum {

	public String account;
	public String password;
	public MyTool mytool;
	public Server serverLoginAccount;
	public String data = MANA_LOGIN_PASSWORD_ERROR;;// 用get方法返回值, 然后在页面取的,
													// 这个需要get方法;在这用于输出错误信息

	@Override
	public String execute() throws Exception {
		System.out.println("logincheck:用户名：" + account + " 密码：" + password);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		if (this.getAccount() != null && this.getPassword() != null) {// 同时不为空
			try {
				for (tb_manager mana : server.querryAll(tb_manager.class)) {
					if (mana.getAcount().equals(this.getAccount())) {
						if (mana.getPassword().equals(this.getPassword())) {// 登录检查通过
							serverLoginAccount.add(mytool.getLoginInfo(account,
									request));// 登录信息添加到数据库

							HashMap<String, Integer> adminInfo = new HashMap();

							for (tb_logininfo logininfo : serverLoginAccount
									.querryAll(tb_logininfo.class)) {
								String account = logininfo.getAccount();
								if (!adminInfo.containsKey(account)) {
									adminInfo.put(account, 1);
								} else {
									// 自动替换已存在key
									adminInfo.put(account,
											(adminInfo.get(account) + 1));
								}
							}

							request.getSession().setAttribute("adminLoginInfo",
									adminInfo);// 管理员登录信息统计
							request.getSession().setAttribute(USER_MARK, mana);// 保存登录信息

							System.out.println(adminInfo.size());
							data = MANA_LOGIN_PASSWORD_PASSED;
							return MANA_LOGIN_SUCCESS;
						} else {
							data = MANA_LOGIN_PASSWORD_ERROR;
						}
					}

				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(this.getClass().getName()
						+ "."
						+ Thread.currentThread().getStackTrace()[1]
								.getMethodName() + " falied");
			}

		}

		System.out.println(data);
		return MANA_LOGIN_FILED;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Server getServerLoginAccount() {
		return serverLoginAccount;
	}

	public void setServerLoginAccount(Server serverLoginAccount) {
		this.serverLoginAccount = serverLoginAccount;
	}

	public MyTool getMytool() {
		return mytool;
	}

	public void setMytool(MyTool mytool) {
		this.mytool = mytool;
	}

	public String getData() {
		return data;
	}

	@Override
	public boolean isNull() {
		// TODO Auto-generated method stub
		return false;
	}

}
