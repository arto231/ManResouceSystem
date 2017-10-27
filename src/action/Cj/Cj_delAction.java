package action.Cj;

import po.tb_cj;
import actionSum.ActiondelSum;

public class Cj_delAction extends ActiondelSum{
	
	@Override
	public String execute() throws Exception {
		try {
			server.del(id, tb_cj.class);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName()
					+ "."
					+ Thread.currentThread().getStackTrace()[1]
							.getMethodName() + " falied");
		}
		return SUCCESS;
	}
	}
