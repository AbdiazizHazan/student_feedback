<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Course Details</title>
</head>
<body>
    <h1>Course Details</h1>

    <c:if test="${not empty course}">
        <!-- Display course details -->
        <p><strong>Course ID:</strong> ${course.courseId}</p>
        <p><strong>courseName:</strong> ${course.courseName}</p>
        <p><strong>Description:</strong> ${course.description}</p>
        <p><strong>Instructor:</strong> ${course.instructor}</p>
       

        <!-- Enrollment form (optional) -->
        <form action="${pageContext.request.contextPath}/enroll" method="post">
            <input type="submit" value="Enroll Now">
        </form>
    </c:if>

    <c:if test="${empty course}">
        <p>Course details not available.</p>
    </c:if>
</body>
</html>
