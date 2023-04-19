data work.ageSum;
amount = 1000;
rate = .075/12;
do month= 1 to 12;
Earned + (amount + earned) * (rate) ;
end;
run;

data work.earn (drop=counter);
 Value=2000; 
do counter=1 to 20; 
 Interest=value*.075; 
 value+interest; 
 Year+1; 
end; 
run;

data work.q1;
 do index= 5 to 1 by -1;
 count = index;
 end;
run;

data work.invest; 
 do until (Capital>=50000); 
 capital+2000; 
 capital+capital * .10; 
 Year+1; 
 end; 
run;

data work.invest; 
 do while (Capital>=50000); 
 capital+2000; 
 capital+capital * .10; 
 Year+1; 
 end; 
run;