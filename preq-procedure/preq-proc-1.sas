proc summary data=sashelp.class; 
 var age height weight; 
 class sex; 
 output out=work.sum_gender1
 mean=AvgAge AvgHeight AvgWeight;
run;

proc freq data=sashelp.class; /* this code line generates frequency for every variable and show in separate tables */
run; 

proc freq data=sashelp.class; /* only select sex and height tables */
tables sex height;
run;

proc freq data=sashelp.class;
tables sex-height;
run;