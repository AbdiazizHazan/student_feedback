package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Admin;
import com.example.model.Student;
import com.example.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller

public class AdminController  
{
	@Autowired
	private AdminService adminservice;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
				mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminservice.checkAdminLogin(auname, apwd);
		
		
		if(admin!=null)
		{
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	

	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
				mv.setViewName("adminhome");
		return mv;
	}
	
	@GetMapping("viewallstudent")
	public ModelAndView viewallstudent()
	{
		ModelAndView mv = new ModelAndView();
				mv.setViewName("viewallstudent");
			List<Student> students  =	adminservice.viewAllStudents();
			mv.addObject("studentlist",students);
		return mv;
	}
	
	
	
	

}
