proc format;
value wtfmt low-139 = '< 140' 140-180='140-180' 181-high='> 180';
value htfmt low-64='< 5"5"' 65-70='5"5-10" ' 71-high='> 5"10"';
run;
proc freq data=sashelp.class;
tables height*weight;
format weight wtfmt. height htfmt.;
run; 

proc format;
value wtfmt low-139 = '< 140' 140-180='140-180' 181-high='> 180';
value htfmt low-64='< 5"5"' 65-70='5"5-10" ' 71-high='> 5"10"';
run;
proc freq data=sashelp.class;
tables sex*height*weight;
format height htfmt. weight wtfmt.;
run; 

proc format;
value wtfmt low-139 = '< 140' 140-180='140-180' 181-high='> 180';
value htfmt low-64='< 5"5"' 65-70='5"5-10" ' 71-high='> 5"10"';
run;
proc freq data=sashelp.class;
tables sex*height*weight /list;
format height htfmt. weight wtfmt.;
run; 

proc format;
value wtfmt low-139 = '< 140' 140-180='140-180' 181-high='> 180';
run;
proc freq data=sashelp.class;
tables sex*weight /nofreq norow nocol;
format weight wtfmt.;
run; 
