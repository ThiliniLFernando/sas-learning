data class;
set sashelp.class;

proc print data=class;
run;

proc means data=class;
run;

proc means data=class min max ;
run;

proc means data=class min max maxdec=1;
run;

proc means data=sashelp.class min max maxdec=0; 
 var age height weight;
class sex height;
run; 

proc means data=sashelp.class maxdec=0; 
 var age height weight; 
 class sex; 
 output out=work.sum_gender 
 mean=AvgAge AvgHeight AvgWeight
 min=MinAge MinHeight MinWeight;
run;