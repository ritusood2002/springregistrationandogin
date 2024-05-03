package com.dao;

import java.util.List;


import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.Person;

public class Dao  extends HibernateDaoSupport
{
  //insert
	public void inserData(Person p)
	{
		this.getHibernateTemplate().save(p);
	}
	
	//view
	public List<Person> viewData()
	{
		List<Person> getlist = this.getHibernateTemplate().find("from Person");
		return getlist;
		
	}
	//delete
	public void deletedata(int id)
	{
		HibernateTemplate template=getHibernateTemplate();
		Person p=template.get(Person.class, id);
		getHibernateTemplate().delete(p);
		
	}
	//update
	public void updatedata(Person p)
	{
		this.getHibernateTemplate().update(p);
	}
	
	//edit
	public Person getPersonById(int id)
	{
		HibernateTemplate template=getHibernateTemplate();
		Person p=template.get(Person.class, id);
		return p;
    }
	 public Person getPersonByUsernameAndPassword(String name ,String password)
	  {
		  List<Person> personList =getHibernateTemplate().find("from Person where name=? and password=?",name,password);
		
		  if(personList.isEmpty())
			  return null; 
		  else return personList.get(0);
		  
	  }
	

	
}
	
