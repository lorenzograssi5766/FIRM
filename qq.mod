set INSTR;
set RISK;


param covariancematrix{INSTR,INSTR};
param targetR{RISK};
param rateofreturn{INSTR};

var x{INSTR} >=0;

minimize var: sum{i in INSTR,j in INSTR} x[i] * covariancematrix[i,j]*x[j];
s.t. cons1: sum{i in INSTR} rateofreturn[i]*x[i] >= targetR;
s.t. cons2:sum{i in INSTR} x[i]==1; 







