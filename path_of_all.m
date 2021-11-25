function sum2 = path_of_all(G,k)
% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 16/2/2020
[n,m,~]=size(G);
N=n*m;
sum2=zeros(N,1);
G= tenmat(G,3);
for j=1:N
s=0;
s = sum(G(1:k,j));
sum2(j)=s;
end