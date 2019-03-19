* Written by R;
*  write.foreign(df, "U:/ex_mixedfx1.txt", "U:/ex_mixedfx1.sas",  ;

PROC FORMAT;
value x 
     1 = "1" 
     2 = "2" 
     3 = "3" 
;

value xu 
     1 = "1" 
     2 = "2" 
     3 = "3" 
     4 = "4" 
     5 = "5" 
     6 = "6" 
     7 = "7" 
     8 = "8" 
     9 = "9" 
     10 = "10" 
     11 = "11" 
     12 = "12" 
     13 = "13" 
     14 = "14" 
     15 = "15" 
;

DATA  rdata ;
INFILE  "U:/ex_mixedfx1.txt" 
     DSD 
     LRECL= 15 ;
INPUT
 x
 xu
 y
;
FORMAT x x. ;
FORMAT xu xu. ;
RUN;
