package com.example.service;

import java.util.List;

import com.example.model.Admin;
import com.example.model.Student;

public interface AdminService {
	
	public List<Student> viewAllStudents();
	public Admin checkAdminLogin(String uname,String pwd);

}
