package MyTool;

import java.util.ArrayList;

public class CutPages {
	
	public int position=0;//记录当前数据的位置
public <E> PageModel<E> cutpage(int pageSize,int pageNo,ArrayList<E> data){
	
	
	//进行分页
	ArrayList<PageModel<E>> pages=new ArrayList<PageModel<E>>();
	while(position<data.size()){
		PageModel<E> page=new PageModel<E>();
		for(int j=0;j<pageSize;j++,position++){
			page.getList().add(data.get(position));//huoqu
		
	}
		
	}
		
		
	}
	
	return null;
}
}
