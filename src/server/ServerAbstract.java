package server;

import java.util.ArrayList;
import java.util.Iterator;

import dao.dao;

public abstract class ServerAbstract implements Server{
public dao dao;

public dao getDao() {
	return dao;
}

public void setDao(dao dao) {
	this.dao = dao;
}

@Override
public boolean add(Object object) {
	// TODO Auto-generated method stub
	return dao.insert(object);
}

@Override
public boolean del(int id, Class<?> c) {
	// TODO Auto-generated method stub
	return dao.del(id, c);
}

@Override
public boolean update(Object object) {
	// TODO Auto-generated method stub
	return dao.update(object);
}

@Override
public boolean _update(int id,Object data) {
	// TODO Auto-generated method stub
	return dao._update(data);
}

@SuppressWarnings({ "unchecked", "rawtypes" })
@Override
public <T> ArrayList<T> querryAll(Class<T> c) {
	ArrayList<T> result=new ArrayList<T>();
	try {
		Iterator it=dao.querryAll(c).iterator();
		while(it.hasNext()){
			
			result.add((T) it.next());
		}
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println(this.getClass().getName() + "."
				+ Thread.currentThread().getStackTrace()[1].getMethodName()
				+ " falied");
		return null;
	}
	return result;
}
//check id is useable
abstract boolean isIdExist(Object obj);


}
