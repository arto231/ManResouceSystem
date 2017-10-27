package server;

import java.util.ArrayList;
/**
 * server
 * */
public interface Server {
	/**
	 * add check aready exist
	 * */
	public boolean add(Object object);
	
	/**
	 * 
	 * del check id  must be exist*/
	public boolean del(int id,Class<?> c);
	
	/**
	 * update  check id must be exist
	 * */
	public boolean update(Object object);
	/**
	 * 修改指定位置的值
	 * */
	
	/**
	 * check id must be exist
	 * */
	public boolean _update(int id,Object data);
	public <T>  ArrayList<T> querryAll(Class<T> c);
}
