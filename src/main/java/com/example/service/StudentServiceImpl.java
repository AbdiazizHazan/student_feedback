package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.Student;
import com.example.repository.StudentRepository;
@Service
public class StudentServiceImpl implements StudentService {
	

	@Autowired
	private StudentRepository studentRepository;

	@Override
	public String StudentRegistration(Student student) {
		studentRepository.save(student);
		return "Student Register Successfully";
	}
	
	@Override
	public Student chekStudentLogin(String email, String password) {
		return studentRepository.checksStudentLogin(email, password);
	}

}
