package com.controller;

import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.internal.util.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bo.BO;

import com.model.Person;

@Controller
public class Mycontroller 
{
	public BO getBoBean() 
	{
		ApplicationContext a = new ClassPathXmlApplicationContext("Beans.xml");
		BO dnbo = (BO) a.getBean("bo");
		return dnbo;
	}
	
	   @RequestMapping(value="/")
	   public String Home()
	   {
		   return "Home";
	   }
	   
   @RequestMapping(value="/index")
   public String index()
   {
	   return "index";
   }
   
   @RequestMapping(value="/loginsucess")
   public String loginmethod()
   {
	   return "/loginsucess";
   }
   @RequestMapping(value="/error")
   public String loginmethod1()
   {
	   return "/error";
   }
   
  
	@RequestMapping(value="/insert")
	public String insert(HttpServletRequest request,HttpServletResponse resp,ModelMap map)
	{
		Person p = new Person();
		p.setName(request.getParameter("name"));
		p.setGender(request.getParameter("ugender"));
		p.setAddress(request.getParameter("address"));
		p.setCity(request.getParameter("ucity"));
		p.setState(request.getParameter("ustate"));
		p.setEmail(request.getParameter("uemail"));
		p.setPassword(request.getParameter("upassword"));
		ApplicationContext acm = new ClassPathXmlApplicationContext("Beans.xml");
		BO bo = (BO) acm.getBean("bo");
		bo.inserData(p);
		return "show";
	}
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request,HttpServletResponse resp,ModelMap map)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		ApplicationContext acm = new ClassPathXmlApplicationContext("Beans.xml");
		BO bo=(BO) acm.getBean("bo");
		bo.deletedata(id);
		return "show";
		
	}
	@RequestMapping(value = "/edit")
	public String edit(HttpServletRequest request,HttpServletResponse resp,ModelMap map)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		ApplicationContext acm=new ClassPathXmlApplicationContext("Beans.xml");
		BO bo=(BO) acm.getBean("bo");
		Person p=bo.getPersonById(id);
		map.addAttribute("p",p);
		return "update";
	}
	@RequestMapping(value = "/update")
	public String update(HttpServletRequest request,HttpServletResponse resp,ModelMap map)
	{
		Person p=new Person();
		p.setId(Integer.parseInt(request.getParameter("id")));
		p.setName(request.getParameter("name"));
	
		p.setGender(request.getParameter("ugender"));
		p.setAddress(request.getParameter("address"));
		p.setCity(request.getParameter("ucity"));
		p.setState(request.getParameter("ustate"));
		p.setEmail(request.getParameter("uemail"));
		p.setPassword(request.getParameter("upassword"));
		ApplicationContext acm=new ClassPathXmlApplicationContext("Beans.xml");
		BO bo=(BO) acm.getBean("bo");
		bo.updatedata(p);
		return "show";
	}
	@RequestMapping(value = "/Login")
	public String login()
	{
		return "Login";
	}
	public boolean checkSession(HttpServletRequest httpServletRequest) 
	{
		HttpSession httpSession = httpServletRequest.getSession();
		if((Person)httpSession.getAttribute("person")!=null) 
		{
			return true;
		}
		return false;
	}
	@RequestMapping(value="/signin",method=RequestMethod.POST)
	public String Signin(HttpServletRequest request,HttpServletResponse response,ModelMap map)
	{
		String username = request.getParameter("name");
		String password = request.getParameter("upassword");
		
		  Person person = null;
			BO bo = getBoBean();
			person = bo.getPersonByUsernameAndPassword(username,password);
				if(person==null)
				{
				 System.out.println("username and password is invalid");
				 return "error";
				}
			   else
				{
					HttpSession httpSession = request.getSession();
					person.setPassword(new String(Base64.getEncoder().encode(person.getPassword().getBytes())));
					httpSession.setAttribute("person",person);
					System.err.println(person.getName()+" welcome to your login");
					return "loginsucess";
				}
      }	
}
	