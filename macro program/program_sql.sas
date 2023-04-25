%include "/home/u63360528/student.sas";
%include "/home/u63360528/online_course.sas";
%include "/home/u63360528/course_asignment.sas";

%importStudentData;
%importCourseData;
%importCourseAsignmentData;

proc sql;
	select * from student,onlinecourse,courseassignment
	where 
		student.sid=courseassignment.student_id and 
		onlinecourse.cid=courseassignment.course_id;
quit;

proc sql;
	create table student_course as
	select * from student,onlinecourse,courseassignment
	where 
		student.sid=courseassignment.student_id and 
		onlinecourse.cid=courseassignment.course_id;
quit;

proc sql;
	select student_id,fname,lname,FREQ(student_id) 
	as assigned_course_count 
	from student,onlinecourse,courseassignment
	where 
		student.sid=courseassignment.student_id and 
		onlinecourse.cid=courseassignment.course_id
	group by student_id,fname,lname
	order by student_id;
quit;

proc sql feedback;
	select distinct student_id,fname,lname,FREQ(student_id) 
	as assigned_course_count 
	from student,onlinecourse,courseassignment
	where 
		student.sid=courseassignment.student_id and 
		onlinecourse.cid=courseassignment.course_id
	group by student_id
	having assigned_course_count > 1
	order by student_id;
quit;

proc sql feedback outobs=5;
	select student_id,fname,lname,FREQ(student_id) 
	as assigned_course_count 
	from student,onlinecourse,courseassignment
	where 
		student.sid=courseassignment.student_id and 
		onlinecourse.cid=courseassignment.course_id
	group by student_id
	having assigned_course_count > 1
	order by student_id;
quit;

proc sql;
	title 'Student Details with Courses';
	select *,fname label='FIRST NAME'
	from student,onlinecourse,courseassignment
	where 
		student.sid=courseassignment.student_id and 
		onlinecourse.cid=courseassignment.course_id and 
		age between 10 and 16 and 
 		fname contains 'a';
quit;

proc sql;
	title 'Noncorrelated Subqueries with Student Table';
	select *,avg(age) from student
	where age > (select avg(age) from student);
quit;

proc sql;
	title 'Correlated Subqueries with Student Table';
	select *,avg(age) from student
	where age > (select avg(age) from student);
quit;
