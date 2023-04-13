data work.d1;
set sashelp.class;
Salary = Age * input(Height,COMMA9.);
run;

data work.d2;
set sashelp.class;
Salary = Age * put(Height,2.);
run;

/* difference between format and informat */
data work.d2;
set sashelp.class;
Salary = put(Height,2.)||'/'||Name;
run;

data work.d3;
input Name$ startDate endDate Address$;
currentTime = time();
now1 = today();
now2 = date();
exDate = mdy(04,28,2022);
exDay = day(now1);
quater = qtr(now1);
wkday = weekday(now1);
add1 = scan(Address,1,',');
add2 = scan(Address,2,',');
add3 = scan(Address,3,',');
add4 = substr(Address,1,2);
substr(Address,1,2) = 'He';
datalines;
A 3600 3700 189/22 St,Negombo,Gampaha
B 7600 8000 1A,Kurunagala,Colombo
;
run;
proc print data=work.d3;
 format startDate endDate now1 now2 date9.;
run;

data work.address;
set sashelp.class;
Name = upcase(Name);
Name = lowcase(Name);
Name = tranwrd(Name,'j','JJ');
/*NewAddress=Height ||', '||Weight||', '||Sex; */
if index(Sex,'F')>0;
run;
proc print data=work.address;
var Name Age Sex Height Weight;
run;

data work.Numbers1;
input n1 n2;
Integer_N1 = INT(n1);
Round_N1 = ROUND(n2,.3);
datalines;
120.0001 3456347.10320
3333.45 123894384389.00
;
run;
proc print data=work.Numbers1;
run;