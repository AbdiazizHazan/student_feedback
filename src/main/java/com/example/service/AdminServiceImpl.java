package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.Admin;
import com.example.model.Student;
import com.example.repository.AdminRepository;
import com.example.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private AdminRepository adminRepository;

	@Override
	public List<Student> viewAllStudents()
	    {
		return studentRepository.findAll();
		}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) 
	{
		return adminRepository.checkAdminLogin(uname, pwd);
	}

}
