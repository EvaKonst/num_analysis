 function [P]=band_stats(mxid,p)
% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 18/2/2020
 
%if mxid is array then use it
[r,c] = size(mxid)
if (r > 1) | (c > 1)
    A=mxid;

%if mxid is integer then search for matrix with id=mxid
elseif (isinteger(int8(mxid)))
Prob = ssget(mxid);     % Prob is a struct (matrix, name, meta-data, ...)
A = Prob.A ;          % A is a square sparse matrix

%if mxid is string then search for matrix with name=mxid
else (isstring(mxid))
index=ssget;
Prob = ssget(mxid,index);     % Prob is a struct (matrix, name, meta-data, ...)
A = Prob.A ;          % A is a square sparse matrix
end

M=A;
n=p;
m=1;
P=zeros(n,2);

for k=0:p-1
for i=1:n
for j=1:n
if (j<i-k) A(i,j)=0;
end
if(j>i+k) A(i,j)=0;
end
end
end
rnnz=nnz(A)/nnz(M);
rerr=norm((M-A),'fro')/norm(A,'fro');
P(m,1)=rnnz;
P(m,2)=rerr;
m=m+1;
A=M;
end