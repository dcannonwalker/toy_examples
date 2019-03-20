* Written by R;
*  write.foreign(df, "U:/ex_mixedfx2.txt", "U:/ex_mixedfx2.sas",  ;

DATA  rdata ;
INFILE  "U:/ex_mixedfx2.txt" 
     DSD 
     LRECL= 25 ;
INPUT
 trt
 xu
 y
;
RUN;
