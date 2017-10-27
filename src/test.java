import po.tb_employee;
import dao.DataBaseOptionAbstract;


public class test {
public static void main(String[] args) {
	 DataBaseOptionAbstract da=new DataBaseOptionAbstract() {
	};
	tb_employee em=new tb_employee();
	da._update(em);
	tb_employee em1=new tb_employee();
	em1.setId(2);
	em1.setEm_age(22);
	em1.setEm_address("ssdd地址");
	em1.setEm_name("name");
	da._update(em1);
}
}
