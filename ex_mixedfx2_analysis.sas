/*assuming you've run the code to read in the data*/

proc print data = rdata;
run;

proc mixed data = rdata method = type1;
class trt xu;
model y = trt / ddfm = satterthwaite;
random trt(xu);
run;
