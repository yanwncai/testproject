/** 
* 2016年1月4日 
* JkglDaoImpl.java * author:ywc */ 
package com.wondersgroup.JKGL.dao.impl;  

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.wondersgroup.JKGL.dao.JkglDao;

@Repository(value = "jkglDao")
public class JkglDaoImpl extends HibernateDaoSupport implements JkglDao {
	@Resource(name = "sessionFactory")
	public void setSuperSessionFactory(SessionFactory sessionFactory){
		this.setSessionFactory(sessionFactory);
	}
	
	
	@Override
	public List findBySql(String sql) {
		Session session = this.getHibernateTemplate().getSessionFactory().getCurrentSession();
		SQLQuery createSQLQuery = session.createSQLQuery(sql);
		
		List list = createSQLQuery.list();
		return list;
	}

}
 