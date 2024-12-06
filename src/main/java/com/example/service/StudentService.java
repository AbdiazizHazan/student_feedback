package com.example.service;

import com.example.model.Student;

public interface StudentService 
{
	public String StudentRegistration(Student student);
	public Student chekStudentLogin(String email, String password);

}
