%macro importCourseData;
	filename c '/home/u63360528/data/online_course.txt';
	data OnlineCourse;
	infile c; 
	input id$ courseName$;
	run;
%mend importCourseData;

%macro printAllOnlineCourses;
	proc print data=OnlineCourse;
	run;
%mend printAllOnlineCourses;

%macro printByCourseId(id);
	proc print data=OnlineCourse;
	where Id=&id;
	run;
%mend printByCourseId ;

%*importCourseData;
%*printAllOnlineCourses;
