data work.student;
/* infile tests obs=10; */
input id fname$ lname$ bday$ age sub1 sub2 sub3;
total = sub1 + sub2 + sub3;
average = total / 3 ;
status = 'Pass';
if total gt 245 then status = 'Pass';
else status = 'Fail';
datalines;
0001 John Fernandoz 10.10.2000 23 100 60 75
0002 Telan Silvestor 10.10.1997 26 99 65 70
0003 Fathima Mihiraj 10.12.2001 25 97 90 99
0004 Clemen Fernando 10.10.1998 25 97 90 99
0005 Raaid Mohemed 10.10.1998 25 97 90 99
0006 Niroha Prabakaran 10.10.1998 25 97 90 99
0007 Veda Thangaraj 10.10.1998 25 97 90 99
0008 Thilini - 10.10.1998 25 97 90 99
0009 Rahul - 10.10.1998 25 97 90 99
0010 Daniel - 10.10.1998 25 97 90 99
0011 Marian - 10.10.1998 25 97 90 99
0012 Mark - 10.10.1998 25 97 90 99
0013 Edvard John 10.10.1998 25 97 90 99
0014 Julia Comester 10.10.1998 25 97 90 99
0015 Fazna - 10.10.1998 25 97 90 99
;
run;
proc print data=work.student;
run;