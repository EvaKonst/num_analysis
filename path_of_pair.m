function sum1 = path_of_pair(G,k,i,j)
% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 15/2/2020
G= tenmat(G,3);
sum1=0;
for m=1:k
sum1 = sum1 + G(m,j+(j-1)*m+(i-1));
end