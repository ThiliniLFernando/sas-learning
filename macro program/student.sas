%macro importStudentData;
	filename st '/home/u63360528/data/student.txt';
	data student;
	infile st; 
	input id fname$ lname$ sex$ age mobileNo$ adress1$ address2$ address3$ joinedDate$;
	run;
	proc print;
	run;
%mend importStudentData;

%importStudentData;