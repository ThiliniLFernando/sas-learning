%let s = %str(;); /* str perfom at compilation */
%let prog = data new&s x=1&s run&s;
%let period = %nrstr(May&June);
%let bq = %bquote(Hi Im Thilini); /* perfom at execution */
%let nrbq = %nrbquote(Hi Im Thilini);
%let upcase_sex = %upcase(m);
%let lowcase = %lowcase(HI THILINI);
%let a=begin;
%let b=%nrstr(&a);
%let a=a very long value;
%let b=%index(&a,v);
%put V appears at position &b.;
%put prog;
%put period;
%put UPCASE produces: %upcase(&b);
%put QUPCASE produces: %qupcase(&b);

%let date = 19MAR2023;
%put SUBSTR : %substr(&date,3);
%put SUBSTR : %substr(&date,3,3); /* start at 3 stop at 3 as well */
*%put SUBSTR : %substr(&date,3,9);

%let syslast = &syslast;
%put SYSLAST : %scan(&syslast,1,.); /* There is QSAN function for special characters. It works same as SCAN function works. */

proc print data=sashelp.class;
where Sex = "&upcase_sex";
run;

options symbolgen pagesize=30;
%let crsnum=3;
data revenue;
set sashelp.class end=final;
where course_number=&crsnum;
total+1;
if paid=’Y’ then paidup+1;
if final then do;
put total= paidup=; /* Write informationto the log. */
if paidup<total then do;
%let foot=Some Fees Are Unpaid;
end; 
else do;
%let foot=All Students Have Paid;
end;
run;
proc print data=revenue;
var student_name student_company paid;
title "Payment Status for Course &crsnum";
footnote "&foot";
run;