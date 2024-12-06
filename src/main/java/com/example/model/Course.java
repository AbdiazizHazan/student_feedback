package com.example.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "course_table")
public class Course
{
	
	    
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "course_id")
	    private Long courseId;

	    @Column(name = "course_name", nullable = false, length = 100)
	    private String courseName;

	    @Column(name = "description", length = 500)
	    private String description;

	    @Column(name = "duration", nullable = false)
	    private int duration;  // Duration in hours or weeks, as needed

	    @Column(name = "instructor", nullable = false, length = 100)
	    private String instructor;

		public Long getCourseId() {
			return courseId;
		}

		public String getCourseName() {
			return courseName;
		}

		public String getDescription() {
			return description;
		}

		public int getDuration() {
			return duration;
		}

		public String getInstructor() {
			return instructor;
		}

		public void setCourseId(Long courseId) {
			this.courseId = courseId;
		}

		public void setCourseName(String courseName) {
			this.courseName = courseName;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public void setDuration(int duration) {
			this.duration = duration;
		}

		public void setInstructor(String instructor) {
			this.instructor = instructor;
		}

		
	
	
	
}
