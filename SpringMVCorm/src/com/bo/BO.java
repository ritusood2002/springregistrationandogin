package com.bo;

import java.util.List;


import com.dao.Dao;
import com.model.Person;

public class BO 
{
	Dao dao;

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) 
	{
		this.dao = dao;
	}
	//insert
	public void inserData(Person p)
	{
		dao.inserData(p);
	}
	//view
	public List<Person> viewdata()
	{
		List<Person> getlist = dao.viewData();
		
		return getlist;
	}
	//delete
	public void deletedata(int id)
	{
		dao.deletedata(id);
	}
	
	//update
	public void updatedata(Person p)
	{
		dao.updatedata(p);
	}
	//edit
	public Person getPersonById(int id)
	{
		return dao.getPersonById(id);
		
	}
	 public Person getPersonByUsernameAndPassword(String username,String password)
	  {
		 return dao.getPersonByUsernameAndPassword(username, password);
		  
	  }

	 
}