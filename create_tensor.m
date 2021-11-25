function [G]=create_tensor(A,k)
% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 13/2/2020

for l=1:k
G(:,:,l)=A^l;
end
