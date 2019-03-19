* Written by R;
*  write.foreign(df, "U:/ex_mixedfx1.txt", "U:/ex_mixedfx1.sas",  ;

PROC FORMAT;
value x 
     1 = "1" 
     2 = "2" 
     3 = "3" 
;

DATA  rdata ;
INFILE  "U:/ex_mixedfx1.txt" 
     DSD 
     LRECL= 12 ;
INPUT
 x
 y
;
FORMAT x x. ;
RUN;
