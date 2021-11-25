%Script to test function bandmatrix for rajat04 matrix
% Author : Ε . ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ , ΑΜ 1059560 , Date : 17/2/2020
rajat = load('rajat04.mat');
R=cell2mat(struct2cell(rajat));
A=R.A;
p=size(A,1);
