package action.Mana;

import po.tb_manager;
import actionSum.ActionAddSum;
import actionSum.ActionSum;

public class Mana_addAction extends ActionAddSum{
	public String account;
	public String psd;
	public String checkpsd;
	public String level;
	@Override
	public String execute() throws Exception {
		//传值为空检测
		if (isNull())
			return ERROR;
		
		for(tb_manager mana:server.querryAll(tb_manager.class)){
			if(this.getAccount().equals(mana.getAcount())){
				return ERROR;
				
		}
		}
		tb_manager manager = new tb_manager();

		manager.setAcount(account);
		manager.setPassword(psd);
		if (level.equals("1"))
			manager.setManagerLevel('1');

		else
			manager.setManagerLevel('0');
		server.add(manager);
		return SUCCESS;
	}
	@Override
	public boolean isNull() {
		if (super.isNotStringNullValue(getAccount())
				&& super.isNotStringNullValue(getPsd())
				&& isNotStringNullValue(getCheckpsd())
				&& isNotStringNullValue(getLevel()))
			return false;
		System.out.println(this.getClass().getName() + "."
				+ Thread.currentThread().getStackTrace()[1].getMethodName()
				+ " falied");
		return true;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPsd() {
		return psd;
	}
	public void setPsd(String psd) {
		this.psd = psd;
	}
	public String getCheckpsd() {
		return checkpsd;
	}
	public void setCheckpsd(String checkpsd) {
		this.checkpsd = checkpsd;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	}
