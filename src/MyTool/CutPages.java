package MyTool;

import java.util.ArrayList;

public class CutPages {
	
	public int position=0;//记录当前数据的位置
	
public <E> ArrayList<PageModel<E>> cutpage(int pageSize,int pageNo,ArrayList<E> data){
	
	
	//进行分页
	int pageNumber=1;//初始页数为1
	ArrayList<PageModel<E>> pages=new ArrayList<PageModel<E>>();
	int dataSize=data.size();
	while(position<dataSize){//当有数据时
		PageModel<E> page=new PageModel<E>();//新建页面对象
		ArrayList<E> pagelist=new ArrayList<E>();//新建页面的list实例
		for(int j=0;j<pageSize&&position<dataSize;j++,position++){//每个页面数据量为指定的数据条数size。同时当前数据位置也位移
			pagelist.add(data.get(position));//huoqu
	}
		page.setList(pagelist);
		page.setPageNo(pageNumber++);
		page.setPageSize(pageSize);
		page.setTotalNum(dataSize);
		pages.add(page);
		
	}
	
	return pages;
}
}
