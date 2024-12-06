package com.example.controller;

import com.example.model.Course;
import com.example.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    // Endpoint to display the list of all courses
    @GetMapping("/courses")
    public String listCourses(Model model) {
        // Fetch all courses from the service and add them to the model
        model.addAttribute("courses", courseService.getAllCourses());
        return "courses";  // Returns courses.jsp view
    }

    // Endpoint to display details of a selected course
    @GetMapping("/enroll")
    public String enroll(@RequestParam("id") Long courseId, Model model) {
        // Fetch the course by ID and add it to the model
        Course course = courseService.getCourseById(courseId);
        if (course != null) {
            model.addAttribute("course", course);
            return "enroll";  // Returns enroll.jsp view
        } else {
            model.addAttribute("error", "Course not found");
            return "error";  // Returns an error page if course not found
        }
    }
}
