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

proc means data=sashelp.class min max maxdec=0; /* only choose min, max and numbered range of variables is 0 (zero floating points) */
 var age height weight; /* listing variables for which to calculate statistics */
class sex height; /* group the data by sex and height */
run; 

proc sort data=sashelp.class out=work.data1; /* the difference between CLASS and BY is that BY generates separate tables for each category and BY comes with sort proc */
by sex height;
run;
proc means data=work.data1 maxdec=1;
var age height weight;
by sex height;
run;

proc means data=sashelp.class maxdec=0; 
 var age height weight; 
 class sex; 
 output out=work.sum_gender 
 mean=AvgAge AvgHeight AvgWeight
 min=MinAge MinHeight MinWeight;
run;