%macro importCourseAsignmentData;
	filename c '/home/u63360528/data/course-asignement.txt';
	data CourseAssignment;
	infile c; 
	input course_id$ student_id;
	run;
%mend importCourseAsignmentData;

%macro printAllStudentWithCourse;
	%include "/home/u63360528/student.sas";
	%include "/home/u63360528/online_course.sas";
	%importCourseData;
	%importStudentData;
	data student_course;
	set student;
	set OnlineCourse;
	set courseassignment;
	run;
	proc print data=student_course;
	run;
%mend printAllStudentWithCourse;

%macro printAllCourseAsignment;
	proc print data=CourseAssignment;
	run;
%mend printAllCourseAsignment;

%*importCourseAsignmentData;
%*printAllCourseAsignment;
