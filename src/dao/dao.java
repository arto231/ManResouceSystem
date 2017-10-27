package dao;

import java.util.List;
/**
 * dao接口类
 * **/
public interface dao {
	public boolean insert(Object object );
	public boolean del(int id,Class<?> c );
	public boolean update(Object object);
	
	/**
	 * 修改指定位置的值
	 * */
	public boolean _update(Object data);
	public List<?> querryAll(Class<?> c);
	public Object querryById(int id,Class<?> c );
}
