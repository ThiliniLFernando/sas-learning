%macro importStudentData;
	filename st '/home/u63360528/data/student.txt';
	data student;
	infile st; 
	input id fname$ lname$ sex$ age mobileNo$ adress1$ address2$ address3$ joinedDate$;
	run;
%mend importStudentData;

%macro printAllStudentDetails;
	proc print data=student;
	run;
%mend printAllStudentDetails;

%macro printByGender(gen);
	proc print data=;
	where Sex=&gen;
	run;
%mend printByGender ;

%macro printByAge(age);
	proc print data=;
	where Age=&age;
	run;
%mend printByAge;
