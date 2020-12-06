param n := 4;
param m := 100;
param nu;
param A {1..m,1..n};
param y {1..m};

var w {1..n};
var gamma;
var s {1..m} >= 0;

minimize primal:
0.5 * sum {i in 1..n} w[i]^2 + nu * sum{i in 1..m} s[i];

subject to constraint {i in 1..m}:
y[i]* (sum {j in 1..n} (A[i,j]*w[j]) + gamma) + s[i] >= 1;

