proc print data = rdata;
run;

proc mixed data = rdata method = type1;
class x xu;
model y = x;
random xu(x);
run;
