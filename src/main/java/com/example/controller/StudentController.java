package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Admin;
import com.example.model.Student;
import com.example.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("studentregistration")
    public ModelAndView studentRegistration() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentregistration");
        return mv;
    }

    @PostMapping("insertstudent")
    public ModelAndView insertStudent(HttpServletRequest request) {
        // Retrieve parameters using correct names from the form
        String name = request.getParameter("sname");
        String gender = request.getParameter("sgender");
        String dob = request.getParameter("sdob");
        String email = request.getParameter("semail");
        String location = request.getParameter("slocation");
        String contact = request.getParameter("scontact");
        String password = request.getParameter("spwd");

        // Create and populate Student object
        Student student = new Student();
        student.setName(name);
        student.setGender(gender);
        student.setDateofbirth(dob);
        student.setEmail(email);
        student.setLocation(location);
        student.setContact(contact);
        student.setPassword(password);

        // Register student using service
        String message = studentService.StudentRegistration(student);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("studentlogin")
    public ModelAndView studentLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentlogin");
        return mv;
    }
    @PostMapping("checkstudentlogin")
    public ModelAndView checkstudentlogin(HttpServletRequest request) {
    	ModelAndView mv = new ModelAndView();
    	String cemail = request.getParameter("cemail");
    	String cpwd = request.getParameter("cpwd");
    	
    	Student student = studentService.chekStudentLogin(cemail, cpwd);
    	
    	
    	if(student!=null)
    	{
    		HttpSession session = request.getSession();
    		session.setAttribute("student", student);
    		mv.setViewName("studenthome");
    	}
    	else
    	{
    		mv.setViewName("studentloginfail");
    		mv.addObject("message", "Login Failed");
    	}
    	return mv;
    }
    
    @GetMapping("studenthome")
    public ModelAndView studenthome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studenthome");
        return mv;
    }
    
    @GetMapping("studentprofile")
    public ModelAndView studentprofile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentprofile");
        return mv;
    }
    
    @GetMapping("studentlogout")
    public ModelAndView studentlogout() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentlogin");
        return mv;
    }
    
}
