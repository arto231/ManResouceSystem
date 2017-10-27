package dao;

import java.lang.reflect.Field;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public abstract class DataBaseOptionAbstract extends HibernateDaoSupport
		implements dao {

	@Override
	public boolean insert(Object object) {
		try {
			this.getHibernateTemplate().save(object);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName() + "."
					+ Thread.currentThread().getStackTrace()[1].getMethodName()
					+ " falied");
			return false;
		}
		return true;
	}

	@Override
	public boolean del(int id, Class<?> c) {
		try {
			this.getHibernateTemplate().delete(querryById(id, c));
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName() + "."
					+ Thread.currentThread().getStackTrace()[1].getMethodName()
					+ " falied");
			return false;
		}

		return true;
	}

	@Override
	public boolean update(Object object) {
		try {
			this.getHibernateTemplate().update(object);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName() + "."
					+ Thread.currentThread().getStackTrace()[1].getMethodName()
					+ " falied");
			return false;
		}

		return true;
	}

	@Override
	public List<?> querryAll(Class<?> c) {

		return this.getHibernateTemplate().find("from " + c.getSimpleName());// 获取简单类名
	}

	@Override
	public Object querryById(int id, Class<?> c) {
		Object obj = new Object();
		try {
			obj = this.getHibernateTemplate().get(c, id);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName() + "."
					+ Thread.currentThread().getStackTrace()[1].getMethodName()
					+ " falied");
			return null;
		}
		return obj;// 返回查询结果的泛型
	}

	@Override
	public boolean _update(Object update) {
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		session.beginTransaction();
		StringBuffer hql = new StringBuffer();
		String id = "";
		Class<?> updatec = update.getClass();
		hql.append("update " + updatec.getSimpleName() + " t set ");
		// Field 字段类型，存储类的成员变量类型
		Field[] oldFileds = updatec.getDeclaredFields();
		for (Field f : oldFileds) {
			try {
				f.setAccessible(true);// 设置该变量的访问权限为可访问，取消语言检查
				String value = String.valueOf(f.get(update));// 传入对象，作为引用该变量的实例
				if (f.getType().getSimpleName().equals("int")) {// 如果是int型变量
					if (f.getName() != "id") {// 排除列名为ID的列
						if (!value.equals("0")) {
							hql.append("t." + f.getName() + "='" + value + "',");
						}
					} else {
						id = String.valueOf(f.get(update));
					}
				} else if (f.getType().getSimpleName().equals("String")) {// 如果是String型变量
					if (!value.equals("null")) {
						hql.append("t." + f.getName() + "='" + value + "',");
					}
				}
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		hql.deleteCharAt(hql.length() - 1);// 删除最后一个字符“,”

		hql.append(" where t.id=" + id);

		System.out.println(hql.toString());
		try {
			Query q = session.createQuery(hql.toString());
			q.executeUpdate();
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(this.getClass().getName() + "."
					+ Thread.currentThread().getStackTrace()[1].getMethodName()
					+ " falied");
			return false;
		}

		return true;
	}

}
