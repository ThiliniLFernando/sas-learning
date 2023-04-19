title "SAS AUTOMATIC MACRO VARIABLES &systime &sysdate &sysdate9";
footnote1 "This is example data &sysdate";
footnote2 "All the data valid inside &systimezone";
data newAutoMacro;
input name$ marks;
cards;
Thilini 80
Krishan 35
Sachini 70
Tharuka 95
Nishaminie 85
Gayathri 90
John 99
;
run;
proc print ;
run;