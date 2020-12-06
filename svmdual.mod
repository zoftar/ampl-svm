param m := 100;
param n:=4;
param nu;
param y {1..m};
param A {1..m, 1..n};

var lambda {1..m} >=0, <=nu;

maximize dual:
sum {i in 1..m} lambda[i] - 0.5* sum{i in 1..m, j in 1..m} (lambda[i]* y[i]*lambda[j]*y[j]*(sum{k in 1..n} A[i, k]*A[j, k]));
subject to constraint:
sum {i in 1..m} lambda[i]*y[i] = 0;